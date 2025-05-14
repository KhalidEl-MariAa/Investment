import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/core/styles/styles.dart';
import 'package:investment/core/utils/colors.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({super.key, required this.hintText, required this.icon, required this.seePassAdvices});
  final String hintText;
  final IconData icon;
  final bool seePassAdvices;
  

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}
bool isObscured = true;
bool isfocused = false;
class _PasswordTextfieldState extends State<PasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onEditingComplete: () {
            if(widget.seePassAdvices){
              setState(() {
                isfocused = false;
              });
            }
          },
          onTap: () {
            if(widget.seePassAdvices){
              setState(() {
                isfocused = true;
              });
            }
           
          },
          obscureText: isObscured,
                    decoration: InputDecoration(
                      hintText:widget.hintText,
                      hintStyle: Styles.santosh15W400.copyWith(color: AppColors.black,fontSize: 13.sp),
                      prefixIcon: Icon(widget.icon, color: AppColors.primaryColor),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscured ? Icons.visibility : Icons.visibility_off,
                          color: AppColors.primaryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
        widget.seePassAdvices && isfocused
                  ? Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Text(
                      'At least 8 characters long, at least one uppercase letter, one lowercase letter, one number, and one special character.',
                      style: Styles.santosh15W400.copyWith(color: AppColors.primaryColor,fontSize: 10.sp),
                    ),
                  )
                  : const SizedBox(),
      ],
    );
  }
}