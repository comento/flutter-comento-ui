import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CustomIconsHelper {
  CustomIconsHelper._();

  ///
  /// IconAlarmLargeLine 형식의 string을 받아서
  /// CustomIconData를 돌려주는 method
  ///
  static IconData getIcon(String icon) {
    final lowerCaseIcon = icon.toLowerCase();
    switch (lowerCaseIcon) {
      case 'iconalarmanswer':
        return CustomIcons.icon_alarm_answer;
      case 'iconalarmassignment':
        return CustomIcons.icon_alarm_assignment;
      case 'iconalarmcelebrate':
        return CustomIcons.icon_alarm_celebrate;
      case 'iconalarmcreditplus':
        return CustomIcons.icon_alarm_creditplus;
      case 'iconalarmlargeline':
        return CustomIcons.icon_alarm_large_line;
      case 'iconalarmlike':
        return CustomIcons.icon_alarm_like;
      case 'iconalarmnotice':
        return CustomIcons.icon_alarm_notice;
      case 'iconalarmquestion':
        return CustomIcons.icon_alarm_question;
      case 'iconalarmselected':
        return CustomIcons.icon_alarm_selected;
      case 'iconalarmwon':
        return CustomIcons.icon_alarm_won;
      case 'iconanalyticslargeline':
        return CustomIcons.icon_analytics_large_line;
      case 'iconanalyticsmediumline':
        return CustomIcons.icon_analytics_medium_line;
      case 'iconanalyticsxlargeline':
        return CustomIcons.icon_analytics_xlarge_line;
      case 'iconanswer2xlargeline':
        return CustomIcons.icon_answer_2xlarge_line;
      case 'iconanswerlargeline':
        return CustomIcons.icon_answer_large_line;
      case 'iconanswerxlargeline':
        return CustomIcons.icon_answer_xlarge_line;
      case 'iconarrowlargeline':
        return CustomIcons.icon_arrow_large_line;
      case 'iconarrowmediumline':
        return CustomIcons.icon_arrow_medium_line;
      case 'iconarrowsmallline':
        return CustomIcons.icon_arrow_small_line;
      case 'iconarrowxlargeline':
        return CustomIcons.icon_arrow_xlarge_line;
      case 'iconarrowroundmediumline':
        return CustomIcons.icon_arrowround_medium_line;
      case 'iconbackwardlargeline':
        return CustomIcons.icon_backward_large_line;
      case 'iconblockmediumline':
        return CustomIcons.icon_block_medium_line;
      case 'iconboard2xlargeline':
        return CustomIcons.icon_board_2xlarge_line;
      case 'iconbookmarklargefill':
        return CustomIcons.icon_bookmark_large_fill;
      case 'iconbookmarklargeline':
        return CustomIcons.icon_bookmark_large_line;
      case 'iconbookmarkmediumfill':
        return CustomIcons.icon_bookmark_medium_fill;
      case 'iconbookmarkmediumline':
        return CustomIcons.icon_bookmark_medium_line;
      case 'iconbookmarkxlargefill':
        return CustomIcons.icon_bookmark_xlarge_fill;
      case 'iconbookmarkxlargeline':
        return CustomIcons.icon_bookmark_xlarge_line;
      case 'iconbrowsemediumfill':
        return CustomIcons.icon_browse_medium_fill;
      case 'iconbrowsemediumline':
        return CustomIcons.icon_browse_medium_line;
      case 'iconchangejob2xlargeline':
        return CustomIcons.icon_changejob_2xlarge_line;
      case 'iconchecklargeline':
        return CustomIcons.icon_check_large_line;
      case 'iconcheckmediumline':
        return CustomIcons.icon_check_medium_line;
      case 'iconchecksmallline':
        return CustomIcons.icon_check_small_line;
      case 'iconcheckround2xlargefill':
        return CustomIcons.icon_checkround_2xlarge_fill;
      case 'iconcheckround2xlargeline':
        return CustomIcons.icon_checkround_2xlarge_line;
      case 'iconcheckroundlargefill':
        return CustomIcons.icon_checkround_large_fill;
      case 'iconcheckroundlargeline':
        return CustomIcons.icon_checkround_large_line;
      case 'iconcheckroundmediumfill':
        return CustomIcons.icon_checkround_medium_fill;
      case 'iconcheckroundmediumline':
        return CustomIcons.icon_checkround_medium_line;
      case 'iconcheckroundsmallfill':
        return CustomIcons.icon_checkround_small_fill;
      case 'iconcheckroundsmallline':
        return CustomIcons.icon_checkround_small_line;
      case 'iconcheckroundxlargefill':
        return CustomIcons.icon_checkround_xlarge_fill;
      case 'iconcheckroundxlargeline':
        return CustomIcons.icon_checkround_xlarge_line;
      case 'iconclockmediumfill':
        return CustomIcons.icon_clock_medium_fill;
      case 'iconclockmediumline':
        return CustomIcons.icon_clock_medium_line;
      case 'iconcloselargeline':
        return CustomIcons.icon_close_large_line;
      case 'iconclosemediumline':
        return CustomIcons.icon_close_medium_line;
      case 'iconclosesmallline':
        return CustomIcons.icon_close_small_line;
      case 'iconclosexlargeline':
        return CustomIcons.icon_close_xlarge_line;
      case 'iconcloseroundmediumfill':
        return CustomIcons.icon_closeround_medium_fill;
      case 'iconcloseroundmediumline':
        return CustomIcons.icon_closeround_medium_line;
      case 'iconcollege2xlargeline':
        return CustomIcons.icon_college_2xlarge_line;
      case 'iconcommentmediumline':
        return CustomIcons.icon_comment_medium_line;
      case 'iconcouponlargeline':
        return CustomIcons.icon_coupon_large_line;
      case 'iconcouponmediumline':
        return CustomIcons.icon_coupon_medium_line;
      case 'icondiscountmediumline':
        return CustomIcons.icon_discount_medium_line;
      case 'icondownloadlargeline':
        return CustomIcons.icon_download_large_line;
      case 'icondownloadmediumline':
        return CustomIcons.icon_download_medium_line;
      case 'icondownloadxlargeline':
        return CustomIcons.icon_download_xlarge_line;
      case 'iconedulargefill':
        return CustomIcons.icon_edu_large_fill;
      case 'iconedulargeline':
        return CustomIcons.icon_edu_large_line;
      case 'iconessaylargeline':
        return CustomIcons.icon_essay_large_line;
      case 'iconessaymediumline':
        return CustomIcons.icon_essay_medium_line;
      case 'iconessayxlargeline':
        return CustomIcons.icon_essay_xlarge_line;
      case 'iconexclamationlargefill':
        return CustomIcons.icon_exclamation_large_fill;
      case 'iconexclamationlargeline':
        return CustomIcons.icon_exclamation_large_line;
      case 'iconexclamationmediumfill':
        return CustomIcons.icon_exclamation_medium_fill;
      case 'iconexclamationmediumline':
        return CustomIcons.icon_exclamation_medium_line;
      case 'iconexclamationsmallfill':
        return CustomIcons.icon_exclamation_small_fill;
      case 'iconexclamationsmallline':
        return CustomIcons.icon_exclamation_small_line;
      case 'iconexportmediumline':
        return CustomIcons.icon_export_medium_line;
      case 'iconfilemediumline':
        return CustomIcons.icon_file_medium_line;
      case 'iconfilesmallline':
        return CustomIcons.icon_file_small_line;
      case 'iconfilterlargeline':
        return CustomIcons.icon_filter_large_line;
      case 'iconfiltermediumline':
        return CustomIcons.icon_filter_medium_line;
      case 'iconhamburgerlargeline':
        return CustomIcons.icon_hamburger_large_line;
      case 'iconimportlargeline':
        return CustomIcons.icon_import_large_line;
      case 'iconimportmediumline':
        return CustomIcons.icon_import_medium_line;
      case 'iconinformationlargefill':
        return CustomIcons.icon_information_large_fill;
      case 'iconinformationlargeline':
        return CustomIcons.icon_information_large_line;
      case 'iconinformationsmallfill':
        return CustomIcons.icon_information_small_fill;
      case 'iconinformationsmallline':
        return CustomIcons.icon_information_small_line;
      case 'iconinterviewlargeline':
        return CustomIcons.icon_interview_large_line;
      case 'iconinterviewmediumline':
        return CustomIcons.icon_interview_medium_line;
      case 'iconjob2xlargeline':
        return CustomIcons.icon_job_2xlarge_line;
      case 'iconlikemediumfill':
        return CustomIcons.icon_like_medium_fill;
      case 'iconlikemediumline':
        return CustomIcons.icon_like_medium_line;
      case 'iconlikesmallfill':
        return CustomIcons.icon_like_small_fill;
      case 'iconlikesmallline':
        return CustomIcons.icon_like_small_line;
      case 'iconlinklargeline':
        return CustomIcons.icon_link_large_line;
      case 'iconlinkmediumline':
        return CustomIcons.icon_link_medium_line;
      case 'iconlinksmallline':
        return CustomIcons.icon_link_small_line;
      case 'iconlocationmediumfill':
        return CustomIcons.icon_location_medium_fill;
      case 'iconlocationmediumline':
        return CustomIcons.icon_location_medium_line;
      case 'iconlocklargefill':
        return CustomIcons.icon_lock_large_fill;
      case 'iconlocklargeline':
        return CustomIcons.icon_lock_large_line;
      case 'iconlockmediumfill':
        return CustomIcons.icon_lock_medium_fill;
      case 'iconlockmediumline':
        return CustomIcons.icon_lock_medium_line;
      case 'iconmegaphonelargeline':
        return CustomIcons.icon_megaphone_large_line;
      case 'iconmegaphonemediumline':
        return CustomIcons.icon_megaphone_medium_line;
      case 'iconmegaphonesmallline':
        return CustomIcons.icon_megaphone_small_line;
      case 'iconmentoringlargefill':
        return CustomIcons.icon_mentoring_large_fill;
      case 'iconmentoringlargeline':
        return CustomIcons.icon_mentoring_large_line;
      case 'iconminusmediumline':
        return CustomIcons.icon_minus_medium_line;
      case 'iconphoto2xlargeline':
        return CustomIcons.icon_photo_2xlarge_line;
      case 'iconphotolargeline':
        return CustomIcons.icon_photo_large_line;
      case 'iconphotoxlargeline':
        return CustomIcons.icon_photo_xlarge_line;
      case 'iconplus2xlargeline':
        return CustomIcons.icon_plus_2xlarge_line;
      case 'iconpluslargeline':
        return CustomIcons.icon_plus_large_line;
      case 'iconplusmediumline':
        return CustomIcons.icon_plus_medium_line;
      case 'iconplussmallline':
        return CustomIcons.icon_plus_small_line;
      case 'iconplusroundlargeline':
        return CustomIcons.icon_plusround_large_line;
      case 'iconplusroundmediumline':
        return CustomIcons.icon_plusround_medium_line;
      case 'iconpricemediumline':
        return CustomIcons.icon_price_medium_line;
      case 'iconprofile2xlargefill':
        return CustomIcons.icon_profile_2xlarge_fill;
      case 'iconprofilelargefill':
        return CustomIcons.icon_profile_large_fill;
      case 'iconprofilelargeline':
        return CustomIcons.icon_profile_large_line;
      case 'iconprofilesmallfill':
        return CustomIcons.icon_profile_small_fill;
      case 'iconprofilesmallline':
        return CustomIcons.icon_profile_small_line;
      case 'iconprofilexlargefill':
        return CustomIcons.icon_profile_xlarge_fill;
      case 'iconprofilexlargeline':
        return CustomIcons.icon_profile_xlarge_line;
      case 'iconptlargefill':
        return CustomIcons.icon_pt_large_fill;
      case 'iconptlargeline':
        return CustomIcons.icon_pt_large_line;
      case 'iconquestionlargeline':
        return CustomIcons.icon_question_large_line;
      case 'iconquestionmediumline':
        return CustomIcons.icon_question_medium_line;
      case 'iconquestionmarklargefill':
        return CustomIcons.icon_questionmark_large_fill;
      case 'iconquestionmarklargeline':
        return CustomIcons.icon_questionmark_large_line;
      case 'iconquestionmarkmediumfill':
        return CustomIcons.icon_questionmark_medium_fill;
      case 'iconquestionmarkmediumline':
        return CustomIcons.icon_questionmark_medium_line;
      case 'iconquestionmarksmallfill':
        return CustomIcons.icon_questionmark_small_fill;
      case 'iconquestionmarksmallline':
        return CustomIcons.icon_questionmark_small_line;
      case 'iconreplylargeline':
        return CustomIcons.icon_reply_large_line;
      case 'iconresumelargeline':
        return CustomIcons.icon_resume_large_line;
      case 'iconresumemediumline':
        return CustomIcons.icon_resume_medium_line;
      case 'iconrevertmediumline':
        return CustomIcons.icon_revert_medium_line;
      case 'iconsearchlargeline':
        return CustomIcons.icon_search_large_line;
      case 'iconsearchsmallline':
        return CustomIcons.icon_search_small_line;
      case 'iconsecuritylargefill':
        return CustomIcons.icon_security_large_fill;
      case 'iconsecuritylargeline':
        return CustomIcons.icon_security_large_line;
      case 'iconsendlargefill':
        return CustomIcons.icon_send_large_fill;
      case 'iconsettinglargeline':
        return CustomIcons.icon_setting_large_line;
      case 'iconsettingsmallfill':
        return CustomIcons.icon_setting_small_fill;
      case 'iconsirenmediumline':
        return CustomIcons.icon_siren_medium_line;
      case 'iconstarlargefill':
        return CustomIcons.icon_star_large_fill;
      case 'iconstarlargeline':
        return CustomIcons.icon_star_large_line;
      case 'iconstarmediumfill':
        return CustomIcons.icon_star_medium_fill;
      case 'iconstarmediumline':
        return CustomIcons.icon_star_medium_line;
      case 'iconstarsmallfill':
        return CustomIcons.icon_star_small_fill;
      case 'iconstarsmallline':
        return CustomIcons.icon_star_small_line;
      case 'iconstarxlargefill':
        return CustomIcons.icon_star_xlarge_fill;
      case 'iconstarxlargeline':
        return CustomIcons.icon_star_xlarge_line;
      case 'iconstarroundlargefill':
        return CustomIcons.icon_starround_large_fill;
      case 'iconsupervisor2xlargeline':
        return CustomIcons.icon_supervisor_2xlarge_line;
      case 'iconsupport2xlargeline':
        return CustomIcons.icon_support_2xlarge_line;
      case 'iconsupportmediumline':
        return CustomIcons.icon_support_medium_line;
      case 'iconsupportxlargeline':
        return CustomIcons.icon_support_xlarge_line;
      case 'icontextarrowlargeline':
        return CustomIcons.icon_textarrow_large_line;
      case 'icontextarrowmediumline':
        return CustomIcons.icon_textarrow_medium_line;
      case 'icontextarrowsmallline':
        return CustomIcons.icon_textarrow_small_line;
      case 'icontextarrowxlargeline':
        return CustomIcons.icon_textarrow_xlarge_line;
      case 'iconthreedotlargefill':
        return CustomIcons.icon_threedot_large_fill;
      case 'iconthreedotmediumfill':
        return CustomIcons.icon_threedot_medium_fill;
      case 'iconthreedotsmallfill':
        return CustomIcons.icon_threedot_small_fill;
      case 'icontrashlargeline':
        return CustomIcons.icon_trash_large_line;
      case 'icontrashmediumline':
        return CustomIcons.icon_trash_medium_line;
      case 'iconunblockmediumline':
        return CustomIcons.icon_unblock_medium_line;
      case 'iconvideolargefill':
        return CustomIcons.icon_video_large_fill;
      case 'iconvideolargeline':
        return CustomIcons.icon_video_large_line;
      case 'iconvideomediumfill':
        return CustomIcons.icon_video_medium_fill;
      case 'iconvideomediumline':
        return CustomIcons.icon_video_medium_line;
      case 'iconvodlargeline':
        return CustomIcons.icon_vod_large_line;
      case 'iconvodmediumline':
        return CustomIcons.icon_vod_medium_line;
      case 'iconvodxlargeline':
        return CustomIcons.icon_vod_xlarge_line;
      case 'iconvodproductlargeline':
        return CustomIcons.icon_vodproduct_large_line;
      case 'iconwriting2xlargeline':
        return CustomIcons.icon_writing_2xlarge_line;
      case 'iconwritinglargeline':
        return CustomIcons.icon_writing_large_line;
      case 'iconwritingmediumline':
        return CustomIcons.icon_writing_medium_line;
      case 'iconwritingsmallline':
        return CustomIcons.icon_writing_small_line;
      case 'iconclasslargeline':
        return CustomIcons.icon_class_large_line;
      case 'iconbusinesscaselargeline':
        return CustomIcons.icon_businesscase_large_line;
      case 'iconfeedlargeline':
        return CustomIcons.icon_feed_large_line;
      case 'iconhomelargeline':
        return CustomIcons.icon_home_large_line;
      default:
        return Icons.error;
    }
  }
}
