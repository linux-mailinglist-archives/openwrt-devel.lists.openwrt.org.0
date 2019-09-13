Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5215B275E
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 23:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NlFBgzjyK2nHoLOZUIp6HD153wJNFR9Ty1yKJxFSDfQ=; b=QatOxfP2Fk9sYKiwLDbQqzKrR
	wEZnEgSfNDlRZse2wae8rhS1oX1y48NPzvSmUZFXFxtH7xtz3SW49xJ8uf5941CZkUiCPPh5ZOGhk
	HGJNxW9v8m3UlcKSwmD1HbCB6V1b3eb7A+vcvJWuIBbRsEp4u0whPiY56GAU/MHdh/1A6xMr8q6Xz
	cQ2AGs6AzYknT40wZ098MOUCwvGHFDauGUKDqiZovshPb3vPt4CXG34w0jvMXWTl4znLLtvu1uHxg
	1dKeYrUqf+p9pTMV1o4SsDGwaUxWHh6f77cWmvtVTZMI6wD3AEj+I6MXbl0iyfayWidm5lXaxAmHl
	DFc5KJoEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8tFU-0000Ct-BS; Fri, 13 Sep 2019 21:37:00 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8tFK-0000CR-0U
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 21:36:52 +0000
Received: by mail-oi1-x242.google.com with SMTP id w6so3845533oie.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 14:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pGUXxEK0sAWm8qJPm+JGfs2ueTDulKDYzmE5hnUc5K4=;
 b=dtz1PXZl5ue544TmNvLgcZcbGnr0AkOA57SkZiC3BmdLlN8CTItAPSU5XKKt6rMcjR
 qMuuPokxNV3N/lUtMeFQ9clTSDua4seTRYUPwL/C/+LysTtdMkn8qfJZ0RWX8oEW5wDf
 8oaryVMCXixmfQv7GJTIb1qp/TwtxMl60tRPieh6I9H1FR/RPPbmqKh+pgumLc4MqZcz
 p67c6sPWQGl+hoBh55ZRiemENkFvV6xMZOd2NYoLj2ORm1Oxcm+V8RrC+fgg+1I6SDeP
 +uhWKBm3pOto1aLdRhz+SNF4XIDDtPRNAZjywmzCtWbq7uWcADgaEfJceDWfq75NkCZg
 9AAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pGUXxEK0sAWm8qJPm+JGfs2ueTDulKDYzmE5hnUc5K4=;
 b=WIo4a+PXlLHWBVSGlty+9bkN6cPR6waFwJgeqlUd9VGQqIJLbXkZq+ojJlixjQaGNY
 Ecd2W3ZOwxfx+utsr6cWUV7UVlcxVwmMNGx8YkGeMovoNDxszmPMdLqUOR6jMSMT7pQD
 7FkuPg/yVhFx6R7NwIgg86gBqPBv9DLJEXN/CcMPrh8K6AwcY6/uJz63CCVL0Vu4w/UN
 mw/imEys0rh/867eWGReYhjXliZFldqmKpwNqwIFbtBp4DJ0D7/k096hQODkZ21eEeh8
 Q5lY3Dd96GMn5Kl29BJ7rxZ5LfRe7jpGf/IIVN7GcoqgnMdjl+N1lj9HaDOZkWKFuCJk
 hdfg==
X-Gm-Message-State: APjAAAX2gcT/nerBMlQVM67PpjP4td3I1NWajkf6U6xmd0eMNe8AAuUd
 JFljHiAjFovC8SIimMG+ntQds1FRWngFJMp4Tns=
X-Google-Smtp-Source: APXvYqyAdTEshEY18rC/1Gnvh0BSadmPNPRUEVbVa01R6Wzfp2WCkMbFpviRQf/I3gh6AymXL1TxIj7nhuVXWxdx8FM=
X-Received: by 2002:aca:fdc9:: with SMTP id b192mr5079262oii.50.1568410606223; 
 Fri, 13 Sep 2019 14:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190913101537.18812-1-robimarko@gmail.com>
 <20190913101537.18812-2-robimarko@gmail.com>
 <2343204.oxXBjeGyBX@debian64>
In-Reply-To: <2343204.oxXBjeGyBX@debian64>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Sat, 14 Sep 2019 02:36:19 +0500
Message-ID: <CALYz8yr=TkNp1eyaz_X0_NJUmXssRdnCWMC3RxwtKJHUp5z+CA@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_143650_090998_9CE4A5D1 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klukonin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ath10k-ct: update to version
 2019-09-09
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Robert Marko <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="===============6285752840103181702=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6285752840103181702==
Content-Type: multipart/alternative; boundary="0000000000000bc5560592760dc4"

--0000000000000bc5560592760dc4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, Christian.

This bug was fixed in ath10k-ct by this previous commit.
https://github.com/greearb/ath10k-ct/commit/9e5ab25027e0971fa24ccf93373324c=
08c4e992d

As I understand, update should be harmless this time.


Best Regards,
Lukonin Kirill


=D1=81=D0=B1, 14 =D1=81=D0=B5=D0=BD=D1=82. 2019 =D0=B3. =D0=B2 00:33, Chris=
tian Lamparter <chunkeey@gmail.com>:

> On Friday, September 13, 2019 12:15:39 PM CEST Robert Marko wrote:
> > Update the ath10k-ct driver version to
> 5e8cd86f90dac966d12df6ece84ac41458d0e95f
> > to enable dynamic VLANs to work.
> > Packages refreshed while bump.
> >
> > Signed-off-by: Robert Marko <robimarko@gmail.com>
> >
> > Changes from v1:
> >       * Fixed wrong mirror hash
>
> Watch out, there's a request to revert the ath10k-ct, since the
> previous "ath10k-ct: update to HEAD of 2019-08-14 - 9e5ab2" patch
> apparently broke 160MHz.
>
>
> https://github.com/openwrt/openwrt/commit/e9d875a5371c89a3f351df5aec593ac=
90ba89ecc#commitcomment-34992683
>
> I didn't see any 160MHz related fixes in the update here... So what to do=
?
> Update or revert?
>
> > ---
> >  package/kernel/ath10k-ct/Makefile                           | 6 +++---
> >  ...h10k-add-support-for-configuring-management-packet.patch | 4 ++--
> >  ...h10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch | 2 +-
> >  ...h10k-fix-incorrect-multicast-broadcast-rate-settin.patch | 4 ++--
> >  .../patches/164-ath10k-commit-rates-from-mac80211.patch     | 6 +++---
> >  ...-and-GPIO-controlling-support-for-various-chipsets.patch | 6 +++---
> >  .../202-ath10k-4.16-use-tpt-trigger-by-default.patch        | 4 ++--
> >  ...h10k-Limit-available-channels-via-DT-ieee80211-fre.patch | 2 +-
> >  ...h10k-Check-if-station-exists-before-forwarding-tx-.patch | 2 +-
> >  9 files changed, 18 insertions(+), 18 deletions(-)
> >
> > diff --git a/package/kernel/ath10k-ct/Makefile
> b/package/kernel/ath10k-ct/Makefile
> > index 05d30891f5..dbf75fe174 100644
> > --- a/package/kernel/ath10k-ct/Makefile
> > +++ b/package/kernel/ath10k-ct/Makefile
> > @@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=3D
> >
> >  PKG_SOURCE_URL:=3Dhttps://github.com/greearb/ath10k-ct.git
> >  PKG_SOURCE_PROTO:=3Dgit
> > -PKG_SOURCE_DATE:=3D2019-08-14
> > -PKG_SOURCE_VERSION:=3D9e5ab25027e0971fa24ccf93373324c08c4e992d
> >
> -PKG_MIRROR_HASH:=3D95dc42a5615f80528223859b4f9618feafb5a0a29a9eb4c4bc983=
f76c74fb535
> > +PKG_SOURCE_DATE:=3D2019-09-09
> > +PKG_SOURCE_VERSION:=3D5e8cd86f90dac966d12df6ece84ac41458d0e95f
> >
> +PKG_MIRROR_HASH:=3Ddc1097f3a7b4b7e346918f206746d00a0b7df07ae3be9b89be55d=
faef3cbbe45
> >
> >  # Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
> >  # Probably this should match as closely as
> > diff --git
> a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring=
-management-packet.patch
> b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring=
-management-packet.patch
> > index d62a1cfcf5..e67003c5a7 100644
> > ---
> a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring=
-management-packet.patch
> > +++
> b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring=
-management-packet.patch
> > @@ -43,7 +43,7 @@ Origin: backport,
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
> >   static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
> >   {
> >       switch ((mcs_map >> (2 * nss)) & 0x3) {
> > -@@ -6388,9 +6404,10 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6405,9 +6421,10 @@ static void ath10k_bss_info_changed(stru
> >       struct cfg80211_chan_def def;
> >       u32 vdev_param, pdev_param, slottime, preamble;
> >       u16 bitrate, hw_value;
> > @@ -56,7 +56,7 @@ Origin: backport,
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
> >
> >       mutex_lock(&ar->conf_mutex);
> >
> > -@@ -6596,6 +6613,30 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6613,6 +6630,30 @@ static void ath10k_bss_info_changed(stru
> >                                   arvif->vdev_id,  ret);
> >       }
> >
> > diff --git
> a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-a=
ccess-of-ath10k_ra.patch
> b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-a=
ccess-of-ath10k_ra.patch
> > index ab360b7261..a24029983c 100644
> > ---
> a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-a=
ccess-of-ath10k_ra.patch
> > +++
> b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-a=
ccess-of-ath10k_ra.patch
> > @@ -26,7 +26,7 @@ Origin: backport,
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
> >               if (ath10k_rates[i].bitrate =3D=3D bitrate)
> >                       return hw_value_prefix | ath10k_rates[i].hw_value=
;
> >       }
> > -@@ -6619,22 +6619,22 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6636,22 +6636,22 @@ static void ath10k_bss_info_changed(stru
> >                       return;
> >               }
> >
> > diff --git
> a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-bro=
adcast-rate-settin.patch
> b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-bro=
adcast-rate-settin.patch
> > index 2b550e76df..f6fd75b7e5 100644
> > ---
> a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-bro=
adcast-rate-settin.patch
> > +++
> b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-bro=
adcast-rate-settin.patch
> > @@ -17,7 +17,7 @@ Origin: other,
> https://patchwork.kernel.org/patch/10723033/
> >
> >  --- a/ath10k-4.19/mac.c
> >  +++ b/ath10k-4.19/mac.c
> > -@@ -6404,8 +6404,8 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6421,8 +6421,8 @@ static void ath10k_bss_info_changed(stru
> >       struct cfg80211_chan_def def;
> >       u32 vdev_param, pdev_param, slottime, preamble;
> >       u16 bitrate, hw_value;
> > @@ -28,7 +28,7 @@ Origin: other,
> https://patchwork.kernel.org/patch/10723033/
> >       enum nl80211_band band;
> >       const struct ieee80211_supported_band *sband;
> >
> > -@@ -6578,7 +6578,11 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6595,7 +6595,11 @@ static void ath10k_bss_info_changed(stru
> >       if (changed & BSS_CHANGED_MCAST_RATE &&
> >           !WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def))) {
> >               band =3D def.chan->band;
> > diff --git
> a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.=
patch
> b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.=
patch
> > index b67ad2c3c4..aab435bccd 100644
> > ---
> a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.=
patch
> > +++
> b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.=
patch
> > @@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
> >
> >  --- a/ath10k-4.19/mac.c
> >  +++ b/ath10k-4.19/mac.c
> > -@@ -6600,6 +6600,7 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6617,6 +6617,7 @@ static void ath10k_bss_info_changed(stru
> >                          "mac vdev %d mcast_rate %x\n",
> >                          arvif->vdev_id, rate);
> >
> > @@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
> >               vdev_param =3D ar->wmi.vdev_param->mcast_data_rate;
> >               ret =3D ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
> >                                               vdev_param, rate);
> > -@@ -6608,6 +6609,7 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6625,6 +6626,7 @@ static void ath10k_bss_info_changed(stru
> >                                   "failed to set mcast rate on vdev %i:
> %d\n",
> >                                   arvif->vdev_id,  ret);
> >
> > @@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
> >               vdev_param =3D ar->wmi.vdev_param->bcast_data_rate;
> >               ret =3D ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
> >                                               vdev_param, rate);
> > -@@ -6634,6 +6636,7 @@ static void ath10k_bss_info_changed(stru
> > +@@ -6651,6 +6653,7 @@ static void ath10k_bss_info_changed(stru
> >                       return;
> >               }
> >
> > diff --git
> a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-contr=
olling-support-for-various-chipsets.patch
> b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-contr=
olling-support-for-various-chipsets.patch
> > index 38ec21f52f..ba42fc1d2d 100644
> > ---
> a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-contr=
olling-support-for-various-chipsets.patch
> > +++
> b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-contr=
olling-support-for-various-chipsets.patch
> > @@ -210,7 +210,7 @@ v13:
> >
> >   #include "htt.h"
> >   #include "htc.h"
> > -@@ -1137,7 +1138,6 @@ struct ath10k {
> > +@@ -1138,7 +1139,6 @@ struct ath10k {
> >       u32 low_5ghz_chan;
> >       u32 high_5ghz_chan;
> >       bool ani_enabled;
> > @@ -218,7 +218,7 @@ v13:
> >       bool p2p;
> >       bool ct_all_pkts_htt; /* CT firmware only: native-wifi for all
> pkts */
> >
> > -@@ -1388,6 +1388,13 @@ struct ath10k {
> > +@@ -1389,6 +1389,13 @@ struct ath10k {
> >       } testmode;
> >
> >       struct {
> > @@ -562,7 +562,7 @@ v13:
> >   int ath10k_wmi_attach(struct ath10k *ar)
> >  --- a/ath10k-4.19/wmi.h
> >  +++ b/ath10k-4.19/wmi.h
> > -@@ -3044,6 +3044,41 @@ enum wmi_10_4_feature_mask {
> > +@@ -3084,6 +3084,41 @@ enum wmi_10_4_feature_mask {
> >
> >   };
> >
> > diff --git
> a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-def=
ault.patch
> b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-def=
ault.patch
> > index e5dd967a26..0e7a03ef6d 100644
> > ---
> a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-def=
ault.patch
> > +++
> b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-def=
ault.patch
> > @@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
> >
> >  --- a/ath10k-4.19/core.h
> >  +++ b/ath10k-4.19/core.h
> > -@@ -1487,6 +1487,10 @@ struct ath10k {
> > +@@ -1488,6 +1488,10 @@ struct ath10k {
> >       u8 csi_data[4096];
> >       u16 csi_data_len;
> >
> > @@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
> >       if (ret)
> >  --- a/ath10k-4.19/mac.c
> >  +++ b/ath10k-4.19/mac.c
> > -@@ -9965,7 +9965,7 @@ int ath10k_mac_register(struct ath10k *a
> > +@@ -9982,7 +9982,7 @@ int ath10k_mac_register(struct ath10k *a
> >       wiphy_ext_feature_set(ar->hw->wiphy,
> NL80211_EXT_FEATURE_CQM_RSSI_LIST);
> >
> >   #ifdef CPTCFG_MAC80211_LEDS
> > diff --git
> a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-vi=
a-DT-ieee80211-fre.patch
> b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-vi=
a-DT-ieee80211-fre.patch
> > index 3a22fc74cb..d770948f79 100644
> > ---
> a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-vi=
a-DT-ieee80211-fre.patch
> > +++
> b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-vi=
a-DT-ieee80211-fre.patch
> > @@ -29,7 +29,7 @@ Forwarded:
> https://patchwork.kernel.org/patch/10549245/
> >   #include <net/mac80211.h>
> >   #include <linux/etherdevice.h>
> >   #include <linux/acpi.h>
> > -@@ -9689,6 +9690,7 @@ int ath10k_mac_register(struct ath10k *a
> > +@@ -9706,6 +9707,7 @@ int ath10k_mac_register(struct ath10k *a
> >               ar->hw->wiphy->bands[NL80211_BAND_5GHZ] =3D band;
> >       }
> >
> > diff --git
> a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-bef=
ore-forwarding-tx-.patch
> b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-bef=
ore-forwarding-tx-.patch
> > index a2f3a3f41a..cd8967cb93 100644
> > ---
> a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-bef=
ore-forwarding-tx-.patch
> > +++
> b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-bef=
ore-forwarding-tx-.patch
> > @@ -70,7 +70,7 @@ Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> >
> >  --- a/ath10k-5.2/htt_rx.c
> >  +++ b/ath10k-5.2/htt_rx.c
> > -@@ -2497,7 +2497,7 @@ do_generic:
> > +@@ -2507,7 +2507,7 @@ do_generic:
> >               spin_lock_bh(&ar->data_lock);
> >
> >               peer =3D ath10k_peer_find_by_id(ar, peer_id);
> >
>
>
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000000bc5560592760dc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello, Christian.<br><br></div>This bug was fixe=
d in ath10k-ct by this previous commit.<br><a href=3D"https://github.com/gr=
eearb/ath10k-ct/commit/9e5ab25027e0971fa24ccf93373324c08c4e992d">https://gi=
thub.com/greearb/ath10k-ct/commit/9e5ab25027e0971fa24ccf93373324c08c4e992d<=
/a><br><br></div>As I understand, update should be harmless this time.<br><=
div><div><div><div><br><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature">Best Regards,<br>Lukonin K=
irill<br></div></div><br></div></div></div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D0=B1, 14 =D1=81=D0=
=B5=D0=BD=D1=82. 2019 =D0=B3. =D0=B2 00:33, Christian Lamparter &lt;<a href=
=3D"mailto:chunkeey@gmail.com">chunkeey@gmail.com</a>&gt;:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On Friday, September 13, 2019 12=
:15:39 PM CEST Robert Marko wrote:<br>
&gt; Update the ath10k-ct driver version to 5e8cd86f90dac966d12df6ece84ac41=
458d0e95f<br>
&gt; to enable dynamic VLANs to work.<br>
&gt; Packages refreshed while bump.<br>
&gt; <br>
&gt; Signed-off-by: Robert Marko &lt;<a href=3D"mailto:robimarko@gmail.com"=
 target=3D"_blank">robimarko@gmail.com</a>&gt;<br>
&gt; <br>
&gt; Changes from v1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0* Fixed wrong mirror hash<br>
<br>
Watch out, there&#39;s a request to revert the ath10k-ct, since the<br>
previous &quot;ath10k-ct: update to HEAD of 2019-08-14 - 9e5ab2&quot; patch=
<br>
apparently broke 160MHz.<br>
<br>
<a href=3D"https://github.com/openwrt/openwrt/commit/e9d875a5371c89a3f351df=
5aec593ac90ba89ecc#commitcomment-34992683" rel=3D"noreferrer" target=3D"_bl=
ank">https://github.com/openwrt/openwrt/commit/e9d875a5371c89a3f351df5aec59=
3ac90ba89ecc#commitcomment-34992683</a><br>
<br>
I didn&#39;t see any 160MHz related fixes in the update here... So what to =
do?<br>
Update or revert?<br>
<br>
&gt; ---<br>
&gt;=C2=A0 package/kernel/ath10k-ct/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++--=
-<br>
&gt;=C2=A0 ...h10k-add-support-for-configuring-management-packet.patch | 4 =
++--<br>
&gt;=C2=A0 ...h10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch | 2 =
+-<br>
&gt;=C2=A0 ...h10k-fix-incorrect-multicast-broadcast-rate-settin.patch | 4 =
++--<br>
&gt;=C2=A0 .../patches/164-ath10k-commit-rates-from-mac80211.patch=C2=A0 =
=C2=A0 =C2=A0| 6 +++---<br>
&gt;=C2=A0 ...-and-GPIO-controlling-support-for-various-chipsets.patch | 6 =
+++---<br>
&gt;=C2=A0 .../202-ath10k-4.16-use-tpt-trigger-by-default.patch=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 4 ++--<br>
&gt;=C2=A0 ...h10k-Limit-available-channels-via-DT-ieee80211-fre.patch | 2 =
+-<br>
&gt;=C2=A0 ...h10k-Check-if-station-exists-before-forwarding-tx-.patch | 2 =
+-<br>
&gt;=C2=A0 9 files changed, 18 insertions(+), 18 deletions(-)<br>
&gt; <br>
&gt; diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k=
-ct/Makefile<br>
&gt; index 05d30891f5..dbf75fe174 100644<br>
&gt; --- a/package/kernel/ath10k-ct/Makefile<br>
&gt; +++ b/package/kernel/ath10k-ct/Makefile<br>
&gt; @@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=3D<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 PKG_SOURCE_URL:=3D<a href=3D"https://github.com/greearb/ath10k-c=
t.git" rel=3D"noreferrer" target=3D"_blank">https://github.com/greearb/ath1=
0k-ct.git</a><br>
&gt;=C2=A0 PKG_SOURCE_PROTO:=3Dgit<br>
&gt; -PKG_SOURCE_DATE:=3D2019-08-14<br>
&gt; -PKG_SOURCE_VERSION:=3D9e5ab25027e0971fa24ccf93373324c08c4e992d<br>
&gt; -PKG_MIRROR_HASH:=3D95dc42a5615f80528223859b4f9618feafb5a0a29a9eb4c4bc=
983f76c74fb535<br>
&gt; +PKG_SOURCE_DATE:=3D2019-09-09<br>
&gt; +PKG_SOURCE_VERSION:=3D5e8cd86f90dac966d12df6ece84ac41458d0e95f<br>
&gt; +PKG_MIRROR_HASH:=3Ddc1097f3a7b4b7e346918f206746d00a0b7df07ae3be9b89be=
55dfaef3cbbe45<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 # Build the 5.2 ath10k-ct driver version.=C2=A0 Other option is =
&quot;-4.19&quot;.<br>
&gt;=C2=A0 # Probably this should match as closely as<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-f=
or-configuring-management-packet.patch b/package/kernel/ath10k-ct/patches/1=
61-ath10k-add-support-for-configuring-management-packet.patch<br>
&gt; index d62a1cfcf5..e67003c5a7 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-conf=
iguring-management-packet.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-conf=
iguring-management-packet.patch<br>
&gt; @@ -43,7 +43,7 @@ Origin: backport, <a href=3D"https://git.kernel.org/=
pub/scm/linux/kernel/git/torvalds/linux" rel=3D"noreferrer" target=3D"_blan=
k">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux</a><br>
&gt;=C2=A0 =C2=A0static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int=
 nss)<br>
&gt;=C2=A0 =C2=A0{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch ((mcs_map &gt;&gt; (2 * nss)) &amp; 0=
x3) {<br>
&gt; -@@ -6388,9 +6404,10 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6405,9 +6421,10 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct cfg80211_chan_def def;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 vdev_param, pdev_param, slottime, preamb=
le;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 bitrate, hw_value;<br>
&gt; @@ -56,7 +56,7 @@ Origin: backport, <a href=3D"https://git.kernel.org/=
pub/scm/linux/kernel/git/torvalds/linux" rel=3D"noreferrer" target=3D"_blan=
k">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux</a><br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;ar-&gt;conf_mutex);<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -@@ -6596,6 +6613,30 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6613,6 +6630,30 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arvif-&gt;vdev_id,=
=C2=A0 ret);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-=
out-of-bound-access-of-ath10k_ra.patch b/package/kernel/ath10k-ct/patches/1=
62-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch<br>
&gt; index ab360b7261..a24029983c 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-=
bound-access-of-ath10k_ra.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-=
bound-access-of-ath10k_ra.patch<br>
&gt; @@ -26,7 +26,7 @@ Origin: backport, <a href=3D"https://git.kernel.org/=
pub/scm/linux/kernel/git/torvalds/linux" rel=3D"noreferrer" target=3D"_blan=
k">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ath10k_rates=
[i].bitrate =3D=3D bitrate)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return hw_value_prefix | ath10k_rates[i].hw_value;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -@@ -6619,22 +6619,22 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6636,22 +6636,22 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect=
-multicast-broadcast-rate-settin.patch b/package/kernel/ath10k-ct/patches/1=
63-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch<br>
&gt; index 2b550e76df..f6fd75b7e5 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multic=
ast-broadcast-rate-settin.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multic=
ast-broadcast-rate-settin.patch<br>
&gt; @@ -17,7 +17,7 @@ Origin: other, <a href=3D"https://patchwork.kernel.o=
rg/patch/10723033/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.=
kernel.org/patch/10723033/</a><br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/ath10k-4.19/mac.c<br>
&gt;=C2=A0 +++ b/ath10k-4.19/mac.c<br>
&gt; -@@ -6404,8 +6404,8 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6421,8 +6421,8 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct cfg80211_chan_def def;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 vdev_param, pdev_param, slottime, preamb=
le;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 bitrate, hw_value;<br>
&gt; @@ -28,7 +28,7 @@ Origin: other, <a href=3D"https://patchwork.kernel.o=
rg/patch/10723033/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.=
kernel.org/patch/10723033/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0enum nl80211_band band;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct ieee80211_supported_band *sband=
;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -@@ -6578,7 +6578,11 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6595,7 +6595,11 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (changed &amp; BSS_CHANGED_MCAST_RATE &am=
p;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!WARN_ON(ath10k_mac_vif_chan(a=
rvif-&gt;vif, &amp;def))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0band =3D def.cha=
n-&gt;band;<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-=
from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-ra=
tes-from-mac80211.patch<br>
&gt; index b67ad2c3c4..aab435bccd 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-ma=
c80211.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-ma=
c80211.patch<br>
&gt; @@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann &lt;<a href=3D"mailto:=
sven@narfation.org" target=3D"_blank">sven@narfation.org</a>&gt;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/ath10k-4.19/mac.c<br>
&gt;=C2=A0 +++ b/ath10k-4.19/mac.c<br>
&gt; -@@ -6600,6 +6600,7 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6617,6 +6617,7 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;mac vdev %d mcast_rate %x\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 arvif-&gt;vdev_id, rate);<br>
&gt;=C2=A0 =C2=A0<br>
&gt; @@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann &lt;<a href=3D"mailto:=
sven@narfation.org" target=3D"_blank">sven@narfation.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vdev_param =3D a=
r-&gt;wmi.vdev_param-&gt;mcast_data_rate;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D ath10k_w=
mi_vdev_set_param(ar, arvif-&gt;vdev_id,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0vdev_param, rate);<br>
&gt; -@@ -6608,6 +6609,7 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6625,6 +6626,7 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;failed to set =
mcast rate on vdev %i: %d\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arvif-&gt;vdev_id,=
=C2=A0 ret);<br>
&gt;=C2=A0 =C2=A0<br>
&gt; @@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann &lt;<a href=3D"mailto:=
sven@narfation.org" target=3D"_blank">sven@narfation.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vdev_param =3D a=
r-&gt;wmi.vdev_param-&gt;bcast_data_rate;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D ath10k_w=
mi_vdev_set_param(ar, arvif-&gt;vdev_id,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0vdev_param, rate);<br>
&gt; -@@ -6634,6 +6636,7 @@ static void ath10k_bss_info_changed(stru<br>
&gt; +@@ -6651,6 +6653,7 @@ static void ath10k_bss_info_changed(stru<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-=
and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/at=
h10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-va=
rious-chipsets.patch<br>
&gt; index 38ec21f52f..ba42fc1d2d 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPI=
O-controlling-support-for-various-chipsets.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPI=
O-controlling-support-for-various-chipsets.patch<br>
&gt; @@ -210,7 +210,7 @@ v13:<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0#include &quot;htt.h&quot;<br>
&gt;=C2=A0 =C2=A0#include &quot;htc.h&quot;<br>
&gt; -@@ -1137,7 +1138,6 @@ struct ath10k {<br>
&gt; +@@ -1138,7 +1139,6 @@ struct ath10k {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 low_5ghz_chan;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 high_5ghz_chan;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool ani_enabled;<br>
&gt; @@ -218,7 +218,7 @@ v13:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool p2p;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool ct_all_pkts_htt; /* CT firmware only: n=
ative-wifi for all pkts */<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -@@ -1388,6 +1388,13 @@ struct ath10k {<br>
&gt; +@@ -1389,6 +1389,13 @@ struct ath10k {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} testmode;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct {<br>
&gt; @@ -562,7 +562,7 @@ v13:<br>
&gt;=C2=A0 =C2=A0int ath10k_wmi_attach(struct ath10k *ar)<br>
&gt;=C2=A0 --- a/ath10k-4.19/wmi.h<br>
&gt;=C2=A0 +++ b/ath10k-4.19/wmi.h<br>
&gt; -@@ -3044,6 +3044,41 @@ enum wmi_10_4_feature_mask {<br>
&gt; +@@ -3084,6 +3084,41 @@ enum wmi_10_4_feature_mask {<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0};<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-=
trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16=
-use-tpt-trigger-by-default.patch<br>
&gt; index e5dd967a26..0e7a03ef6d 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger=
-by-default.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger=
-by-default.patch<br>
&gt; @@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin &lt;<a href=3D"mailto:=
dev@kresin.me" target=3D"_blank">dev@kresin.me</a>&gt;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/ath10k-4.19/core.h<br>
&gt;=C2=A0 +++ b/ath10k-4.19/core.h<br>
&gt; -@@ -1487,6 +1487,10 @@ struct ath10k {<br>
&gt; +@@ -1488,6 +1488,10 @@ struct ath10k {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 csi_data[4096];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 csi_data_len;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; @@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin &lt;<a href=3D"mailto:=
dev@kresin.me" target=3D"_blank">dev@kresin.me</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 --- a/ath10k-4.19/mac.c<br>
&gt;=C2=A0 +++ b/ath10k-4.19/mac.c<br>
&gt; -@@ -9965,7 +9965,7 @@ int ath10k_mac_register(struct ath10k *a<br>
&gt; +@@ -9982,7 +9982,7 @@ int ath10k_mac_register(struct ath10k *a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wiphy_ext_feature_set(ar-&gt;hw-&gt;wiphy, N=
L80211_EXT_FEATURE_CQM_RSSI_LIST);<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0#ifdef CPTCFG_MAC80211_LEDS<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-availab=
le-channels-via-DT-ieee80211-fre.patch b/package/kernel/ath10k-ct/patches/2=
03-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch<br>
&gt; index 3a22fc74cb..d770948f79 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-chan=
nels-via-DT-ieee80211-fre.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-chan=
nels-via-DT-ieee80211-fre.patch<br>
&gt; @@ -29,7 +29,7 @@ Forwarded: <a href=3D"https://patchwork.kernel.org/p=
atch/10549245/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.kern=
el.org/patch/10549245/</a><br>
&gt;=C2=A0 =C2=A0#include &lt;net/mac80211.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;linux/etherdevice.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;linux/acpi.h&gt;<br>
&gt; -@@ -9689,6 +9690,7 @@ int ath10k_mac_register(struct ath10k *a<br>
&gt; +@@ -9706,6 +9707,7 @@ int ath10k_mac_register(struct ath10k *a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ar-&gt;hw-&gt;wi=
phy-&gt;bands[NL80211_BAND_5GHZ] =3D band;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-stat=
ion-exists-before-forwarding-tx-.patch b/package/kernel/ath10k-ct/patches/9=
76-ath10k-Check-if-station-exists-before-forwarding-tx-.patch<br>
&gt; index a2f3a3f41a..cd8967cb93 100644<br>
&gt; --- a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exi=
sts-before-forwarding-tx-.patch<br>
&gt; +++ b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exi=
sts-before-forwarding-tx-.patch<br>
&gt; @@ -70,7 +70,7 @@ Signed-off-by: Hauke Mehrtens &lt;<a href=3D"mailto:=
hauke@hauke-m.de" target=3D"_blank">hauke@hauke-m.de</a>&gt;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/ath10k-5.2/htt_rx.c<br>
&gt;=C2=A0 +++ b/ath10k-5.2/htt_rx.c<br>
&gt; -@@ -2497,7 +2497,7 @@ do_generic:<br>
&gt; +@@ -2507,7 +2507,7 @@ do_generic:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_bh(&am=
p;ar-&gt;data_lock);<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0peer =3D ath10k_=
peer_find_by_id(ar, peer_id);<br>
&gt; <br>
<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000000bc5560592760dc4--


--===============6285752840103181702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6285752840103181702==--

