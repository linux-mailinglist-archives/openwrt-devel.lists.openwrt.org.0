Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7771B3DE8
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 12:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73ui3+jkgioNa+DP5+fsJTydjSeM4JCba9d4W8ecVMM=; b=fUHe5rFf6eGlovI4uCKdjAaFv
	Au440DR1u+ssfo5OcqvoX/rqy+SCvyETtmh35MpZD0WqIzO9zyWjLfma53kIDYBpndPiiKrnzSd9y
	KiVpBTiMtCG/BwioMMYHAAfOccMd+yJpsgsePdPxWHA0CtsNf2DVXxK7FsLEVCrNNft9Wv2vXJpQ5
	RECm56INU/8SK3S/H5bAo+8PabSqiUDhcT1dkDP4/uXU8axyXgf7cxeLrkLZCPxjLXFPoLVQ9KNiK
	dAfSpyXBEaqo/UL3MP0fjp6FFTHhjlE05nkAwrrtoBUjsOhlqN87zd9PwCC81g72yadKi7v6Y4mXB
	WizpIhhFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCW6-00057k-Mi; Wed, 22 Apr 2020 10:22:06 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCVq-00050Q-Lt
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 10:21:55 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 5CA39FC01B; Wed, 22 Apr 2020 12:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587550889;
 bh=0VnQ4aXLbPrVacH4qiEw4g48/1jqvCKa3uA2jmUHJo8=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=jH21cwxJVi2clgd6IHG/vOTJ4X5jAvQEdSCVgVKPAXJm5rJImBKw393TtcZbPZvt0
 eGw3XPlTnqZABvchJx9HDoAAklVRLwH4SWG0aBUGu9djWLWVTHFQQpWAXAGOK7XhFZ
 Nvl/yPNFlMRFx0D/OYI6ZjqEX+qTy3CX4YxmNbDI=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 91786FC019;
 Wed, 22 Apr 2020 12:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1587550880;
 bh=0VnQ4aXLbPrVacH4qiEw4g48/1jqvCKa3uA2jmUHJo8=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=E2tjPc1sfFe/MfFEBZ6tIXRZycfZhhgdE6ueM+kvbaB0aUd5IW13rWpAx/A4Gj1jO
 QtE1paRXxtP9Y2Di6UDiozNnOzX6vILHMbQ38bAAIfg5a6IFS4X98UL8LZ0B4agQ94
 t8S7mXNCjL8IzxdxHxW/oNPK8Z0RgR9ymZ9pnE3M=
Date: Wed, 22 Apr 2020 12:21:19 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-Id: <1587550879.5951.0@mail.volatilesystems.org>
In-Reply-To: <20200421212207.8482-4-hauke@hauke-m.de>
References: <20200421212207.8482-1-hauke@hauke-m.de>
 <20200421212207.8482-4-hauke@hauke-m.de>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_032151_231138_B829BEDE 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] mac80211: Update to version
 5.7-rc2-1
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey Hauke,

Op dinsdag 21 april 2020 om 23:22 schreef Hauke Mehrtens =

<hauke@hauke-m.de>:
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  package/kernel/mac80211/Makefile              |   6 +-
>  .../patches/ath/404-regd_no_assoc_hints.patch |   4 +-
>  ...21-ath10k_init_devices_synchronously.patch |   2 +-
>  .../ath/930-ath10k_add_tpt_led_trigger.patch  |   4 +-
>  ...-of-peer_bw_rxnss_override-parameter.patch |  10 +-
>  ...dling-for-VHT160-in-recent-firmwares.patch |   2 +-
>  ...rolling-support-for-various-chipsets.patch |  22 +-
>  ...75-ath10k-use-tpt-trigger-by-default.patch |   8 +-
>  ...980-ath10k-fix-max-antenna-gain-unit.patch |   6 +-
>  ...-power-reduction-for-US-regulatory-d.patch |   8 +-
>  ...-add-stub-for-monitor-interface-xmit.patch | 100 -----
>  .../patches/build/060-no_local_ssb_bcma.patch |   4 +-
>  .../602-rt2x00-introduce-rt2x00eeprom.patch   |   2 +-
>  .../100-remove-cryptoapi-dependencies.patch   |   2 +-
>  .../110-mac80211_keep_keys_on_stop_ap.patch   |   2 +-
>  .../patches/subsys/130-disable-fils.patch     |   2 +-
>  ...aes-cmac-switch-to-shash-CMAC-driver.patch |  99 +++--
>  .../subsys/140-tweak-TSQ-setting.patch        |   2 +-
>  .../subsys/150-disable_addr_notifier.patch    |  12 +-
>  .../300-mac80211-optimize-skb-resizing.patch  |  14 +-
>  ...80211-fix-tx-status-for-no-ack-cases.patch |  82 ----
>  .../500-mac80211_configure_antenna_gain.patch |  38 +-
>  .../utils/iw/patches/001-nl80211_h_sync.patch | 377 =

> +++++++++++++++++-
>  23 files changed, 511 insertions(+), 297 deletions(-)
>  delete mode 100644 =

> package/kernel/mac80211/patches/brcm/300-brcmfmac-add-stub-for-monitor-in=
terface-xmit.patch
>  delete mode 100644 =

> package/kernel/mac80211/patches/subsys/305-mac80211-fix-tx-status-for-no-=
ack-cases.patch


I tried picking these with git-pw and that works for the first two =

patches of this set, but the third one doesn't apply (errors below). =

Pulling the commits from your
git tree worked for me though.

Error:

$ git-pw patch apply 1274531
b'Applying: mac80211: Update to version =

5.5.11\n.git/rebase-apply/patch:132: space before tab in indent.\n =

\t\t\t\tATH_5GHZ_5725_5850\n.git/rebase-apply/patch:142: space before =

tab in indent.\n \t\tATH_2GHZ_ALL,\n.git/rebase-apply/patch:143: space =

before tab in indent.\n \t\tATH_5GHZ_ALL,\n.git/rebase-apply/patch:154: =

space before tab in indent.\n =

\t\tATH_2GHZ_CH01_11,\n.git/rebase-apply/patch:155: space before tab in =

indent.\n \t\tATH_2GHZ_CH12_13,\nwarning: squelched 16 whitespace =

errors\nwarning: 21 lines add whitespace errors.\nUsing index info to =

reconstruct a base =

tree...\nM\tpackage/kernel/mac80211/Makefile\nM\tpackage/kernel/mac80211/pa=
tches/ath/120-owl-loader-compat.patch\nM\tpackage/kernel/mac80211/patches/a=
th/403-world_regd_fixup.patch\nM\tpackage/kernel/mac80211/patches/ath/921-a=
th10k_init_devices_synchronously.patch\nM\tpackage/kernel/mac80211/patches/=
ath/930-ath10k_add_tpt_led_trigger.patch\nM\tpackage/kernel/mac80211/patche=
s/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-=
parameter.patch\nM\tpackage/kernel/mac80211/patches/ath/973-ath10k_fix-band=
_center_freq-handling-for-VHT160-in-recent-firmwares.patch\nM\tpackage/kern=
el/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for=
-various-chipsets.patch\nM\tpackage/kernel/mac80211/patches/ath/975-ath10k-=
use-tpt-trigger-by-default.patch\nM\tpackage/kernel/mac80211/patches/ath/98=
0-ath10k-fix-max-antenna-gain-unit.patch\nM\tpackage/kernel/mac80211/patche=
s/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch\nA\tpa=
ckage/kernel/mac80211/p
atches/brcm/101-v5.5-0001-brcmfmac-don-t-WARN-when-there-are-no-requests.pa=
tch\nA\tpackage/kernel/mac80211/patches/brcm/101-v5.5-0002-brcmfmac-fix-sus=
pend-resume-when-power-is-cut-off.patch\nA\tpackage/kernel/mac80211/patches=
/brcm/103-v5.5-brcmfmac-remove-set-but-not-used-variable-mpnum-nsp-.patch\n=
A\tpackage/kernel/mac80211/patches/brcm/114-v5.6-0004-brcmfmac-make-errors-=
when-setting-roaming-parameters.patch\nA\tpackage/kernel/mac80211/patches/b=
rcm/114-v5.6-0006-brcmfmac-add-RSDB-condition-when-setting-interface-c.patc=
h\nA\tpackage/kernel/mac80211/patches/brcm/114-v5.6-0007-brcmfmac-not-set-m=
bss-in-vif-if-firmware-does-not-su.patch\nA\tpackage/kernel/mac80211/patche=
s/brcm/119-v5.6-0001-brcmfmac-simplify-building-interface-combinations.patc=
h\nA\tpackage/kernel/mac80211/patches/brcm/119-v5.6-0002-brcmfmac-add-initi=
al-support-for-monitor-mode.patch\nM\tpackage/kernel/mac80211/patches/brcm/=
862-brcmfmac-Disable-power-management.patch\nM\tpackage/kernel/mac80211/pat=
ches/brcm/998-survey.pa
tch\nM\tpackage/kernel/mac80211/patches/build/015-ipw200-mtu.patch\nM\tpack=
age/kernel/mac80211/patches/build/050-lib80211_option.patch\nM\tpackage/ker=
nel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch\nM\tpackage/kernel/=
mac80211/patches/subsys/150-disable_addr_notifier.patch\nM\tpackage/kernel/=
mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.patch\nA\tpackag=
e/kernel/mac80211/patches/subsys/301-mac80211-minstrel-remove-divisions-in-=
tx-status-path.patch\nA\tpackage/kernel/mac80211/patches/subsys/302-mac8021=
1-minstrel_ht-replace-rate-stats-ewma-with-a-.patch\nA\tpackage/kernel/mac8=
0211/patches/subsys/303-mac80211-minstrel_ht-rename-prob_ewma-to-prob_avg-u=
s.patch\nM\tpackage/kernel/mac80211/patches/subsys/304-mac80211-sta-randomi=
ze-BA-session-dialog-token-alloc.patch\nM\tpackage/kernel/mac80211/patches/=
subsys/305-mac80211-fix-tx-status-for-no-ack-cases.patch\nA\tpackage/kernel=
/mac80211/patches/subsys/306-mac80211-move-store-skb-ack-code-to-its-own-fu=
nction.patch\nA\tpackag
e/kernel/mac80211/patches/subsys/307-mac80211-Shrink-the-size-of-ack_frame_=
id-to-make-roo.patch\nA\tpackage/kernel/mac80211/patches/subsys/308-mac8021=
1-Add-new-sta_info-getter-by-sta-vif-addrs.patch\nA\tpackage/kernel/mac8021=
1/patches/subsys/309-mac80211-Import-airtime-calculation-code-from-mt76.pat=
ch\nA\tpackage/kernel/mac80211/patches/subsys/310-mac80211-Implement-Airtim=
e-based-Queue-Limit-AQL.patch\nA\tpackage/kernel/mac80211/patches/subsys/31=
1-mac80211-Use-Airtime-based-Queue-Limits-AQL-on-packe.patch\nA\tpackage/ke=
rnel/mac80211/patches/subsys/312-mac80211-airtime-Fix-an-off-by-one-in-ieee=
80211_calc.patch\nA\tpackage/kernel/mac80211/patches/subsys/313-mac80211-Tu=
rn-AQL-into-an-NL80211_EXT_FEATURE.patch\nA\tpackage/kernel/mac80211/patche=
s/subsys/353-mac80211-use-more-bits-for-ack_frame_id.patch\nM\tpackage/kern=
el/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch\nM\tpa=
ckage/network/utils/iw/patches/001-nl80211_h_sync.patch\nFalling =

back to patching base and 3-way merge...\nAuto-merging =

package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.p=
atch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.p=
atch\nAuto-merging =

package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch\nCONFLIC=
T =

(content): Merge conflict in =

package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch\nAuto-me=
rging =

package/kernel/mac80211/patches/brcm/998-survey.patch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/brcm/998-survey.patch\nAuto-merging =

package/kernel/mac80211/patches/brcm/862-brcmfmac-Disable-power-management.=
patch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/brcm/862-brcmfmac-Disable-power-management.=
patch\nCONFLICT =

(modify/delete): =

package/kernel/mac80211/patches/brcm/119-v5.6-0002-brcmfmac-add-initial-sup=
port-for-monitor-mode.patch =

deleted in HEAD and modified in mac80211: Update to version 5.5.11. =

Version mac80211: Update to version 5.5.11 of =

package/kernel/mac80211/patches/brcm/119-v5.6-0002-brcmfmac-add-initial-sup=
port-for-monitor-mode.patch =

left in tree.\nCONFLICT (modify/delete): =

package/kernel/mac80211/patches/brcm/119-v5.6-0001-brcmfmac-simplify-buildi=
ng-interface-combinations.patch =

deleted in HEAD and modified in mac80211: Update to version 5.5.11. =

Version mac80211: Update to version 5.5.11 of =

package/kernel/mac80211/patches/brcm/119-v5.6-0001-brcmfmac-simplify-buildi=
ng-interface-combinations.patch =

left in tree.\nCONFLICT (modify/delete): =

package/kernel/mac80211/patches/brcm/114-v5.6-0007-brcmfmac-not-set-mbss-in=
-vif-if-firmware-does-not-su.patch =

deleted in HEAD and modified in mac80211: Update to version 5.5.11. =

Version mac80211: Update to version 5.5.11 of =

package/kernel/mac80211/patches/brcm/114-v5.6-0007-brcmfmac-not-set-mbss-in=
-vif-if-firmware-does-not-su.patch =

left in tree.\nCONFLICT (modify/delete): =

package/kernel/mac80211/patches/brcm/114-v5.6-0006-brcmfmac-add-RSDB-condit=
ion-when-setting-interface-c.patch =

deleted in HEAD and modified in mac80211: Update to version 5.5.11. =

Version mac80211: Update to version 5.5.11 of =

package/kernel/mac80211/patches/brcm/114-v5.6-0006-brcmfmac-add-RSDB-condit=
ion-when-setting-interface-c.patch =

left in tree.\nCONFLICT (modify/delete): =

package/kernel/mac80211/patches/brcm/114-v5.6-0004-brcmfmac-make-errors-whe=
n-setting-roaming-parameters.patch =

deleted in HEAD and modified in mac80211: Update to version 5.5.11. =

Version mac80211: Update to version 5.5.11 of =

package/kernel/mac80211/patches/brcm/114-v5.6-0004-brcmfmac-make-errors-whe=
n-setting-roaming-parameters.patch =

left in tree.\nAuto-merging =

package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.p=
atch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.p=
atch\nAuto-merging =

package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling=
-support-for-various-chipsets.patch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling=
-support-for-various-chipsets.patch\nAuto-merging =

package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handl=
ing-of-peer_bw_rxnss_override-parameter.patch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handl=
ing-of-peer_bw_rxnss_override-parameter.patch\nAuto-merging =

package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch\nC=
ONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch\nA=
uto-merging =

package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.p=
atch\nCONFLICT =

(content): Merge conflict in =

package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.p=
atch\nAuto-merging =

package/kernel/mac80211/Makefile\nCONFLICT (content): Merge conflict in =

package/kernel/mac80211/Makefile\nerror: Failed to merge in the =

changes.\nhint: Use \'git am --show-current-patch\' to see the failed =

patch\nPatch failed at 0001 mac80211: Update to version 5.5.11\nWhen =

you have resolved this problem, run "git am --continue".\nIf you prefer =

to skip this patch, run "git am --skip" instead.\nTo restore the =

original branch and stop patching, run "git am --abort".\n'


Pulled from your git tree:

for i in ../hauke/000*patch; do git am $i; done
Applying: mac80211: Update to version 5.5.11
.git/rebase-apply/patch:132: space before tab in indent.
 				ATH_5GHZ_5725_5850
.git/rebase-apply/patch:142: space before tab in indent.
 		ATH_2GHZ_ALL,
.git/rebase-apply/patch:143: space before tab in indent.
 		ATH_5GHZ_ALL,
.git/rebase-apply/patch:154: space before tab in indent.
 		ATH_2GHZ_CH01_11,
.git/rebase-apply/patch:155: space before tab in indent.
 		ATH_2GHZ_CH12_13,
warning: squelched 16 whitespace errors
warning: 21 lines add whitespace errors.
Applying: mac80211: Update to version 5.6.5-1
.git/rebase-apply/patch:203: space before tab in indent.
 		u32 rx_crc_err_drop;
warning: 1 line adds whitespace errors.
Applying: mac80211: Update to version 5.7-rc2-1
.git/rebase-apply/patch:279: space before tab in indent.
 	bool coex_support;
.git/rebase-apply/patch:280: space before tab in indent.
 	int coex_gpio_pin;
.git/rebase-apply/patch:580: space before tab in indent.
 			const u8 *data, size_t data_len, u8 *mic)
.git/rebase-apply/patch:587: space before tab in indent.
 	const __le16 *fc;
.git/rebase-apply/patch:611: space before tab in indent.
 	fc =3D (const __le16 *)aad;
warning: squelched 60 whitespace errors
warning: 65 lines add whitespace errors.


Do I need some extra settings for patchwork?

Cheers

Stijn

> =

> diff --git a/package/kernel/mac80211/Makefile =

> b/package/kernel/mac80211/Makefile
> index c285a11e83b8..569ad7ac0f46 100644
> --- a/package/kernel/mac80211/Makefile
> +++ b/package/kernel/mac80211/Makefile
> @@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
> =

>  PKG_NAME:=3Dmac80211
> =

> -PKG_VERSION:=3D5.6.5-1
> +PKG_VERSION:=3D5.7-rc2-1
>  PKG_RELEASE:=3D1
> -PKG_SOURCE_URL:=3D@KERNEL/linux/kernel/projects/backports/stable/v5.6.5/
> -PKG_HASH:=3D0dcecd7f18d6a61a7364e40ea85d55bf696b557ebce52213e5c27ce6ddbd=
4517
> +PKG_SOURCE_URL:=3D@KERNEL/linux/kernel/projects/backports/stable/v5.7-rc=
2/
> +PKG_HASH:=3D02d9d8b756efe81f5bc86c2d2b5a300576547adac421635c526bf653bf9b=
cbb7
> =

>  PKG_SOURCE:=3Dbackports-$(PKG_VERSION).tar.xz
>  PKG_BUILD_DIR:=3D$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
> diff --git =

> a/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch =

> b/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
> index 8bb1d6c813f6..b186e8fa4781 100644
> --- =

> a/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
> @@ -1,6 +1,6 @@
>  --- a/net/wireless/reg.c
>  +++ b/net/wireless/reg.c
> -@@ -3039,6 +3039,8 @@ void regulatory_hint_country_ie(struct w
> +@@ -3041,6 +3041,8 @@ void regulatory_hint_country_ie(struct w
>   	enum environment_cap env =3D ENVIRON_ANY;
>   	struct regulatory_request *request =3D NULL, *lr;
> =

> @@ -9,7 +9,7 @@
>   	/* IE len must be evenly divisible by 2 */
>   	if (country_ie_len & 0x01)
>   		return;
> -@@ -3290,6 +3292,7 @@ static bool is_wiphy_all_set_reg_flag(en
> +@@ -3292,6 +3294,7 @@ static bool is_wiphy_all_set_reg_flag(en
> =

>   void regulatory_hint_disconnect(void)
>   {
> diff --git =

> a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronous=
ly.patch =

> b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronous=
ly.patch
> index 7409db7cfda0..417dc5843685 100644
> --- =

> a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronous=
ly.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronous=
ly.patch
> @@ -14,7 +14,7 @@ Signed-off-by: Sven Eckelmann <sven@open-mesh.com>
> =

>  --- a/drivers/net/wireless/ath/ath10k/core.c
>  +++ b/drivers/net/wireless/ath/ath10k/core.c
> -@@ -3094,6 +3094,16 @@ int ath10k_core_register(struct ath10k *
> +@@ -3174,6 +3174,16 @@ int ath10k_core_register(struct ath10k *
> =

>   	queue_work(ar->workqueue, &ar->register_work);
> =

> diff --git =

> a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patc=
h =

> b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
> index ae03951908da..c95d0764c3a6 100644
> --- =

> a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
> @@ -1,6 +1,6 @@
>  --- a/drivers/net/wireless/ath/ath10k/mac.c
>  +++ b/drivers/net/wireless/ath/ath10k/mac.c
> -@@ -8764,6 +8764,21 @@ static int ath10k_mac_init_rd(struct ath
> +@@ -8781,6 +8781,21 @@ static int ath10k_mac_init_rd(struct ath
>   	return 0;
>   }
> =

> @@ -22,7 +22,7 @@
>   int ath10k_mac_register(struct ath10k *ar)
>   {
>   	static const u32 cipher_suites[] =3D {
> -@@ -9092,6 +9107,12 @@ int ath10k_mac_register(struct ath10k *a
> +@@ -9109,6 +9124,12 @@ int ath10k_mac_register(struct ath10k *a
> =

>   	ar->hw->weight_multiplier =3D ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
> =

> diff --git =

> a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-h=
andling-of-peer_bw_rxnss_override-parameter.patch =

> b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-h=
andling-of-peer_bw_rxnss_override-parameter.patch
> index dbf30418e073..9cb2198ca23c 100644
> --- =

> a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-h=
andling-of-peer_bw_rxnss_override-parameter.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-h=
andling-of-peer_bw_rxnss_override-parameter.patch
> @@ -23,7 +23,7 @@ v9: use SM/MS macros from code.h to simplify =

> shift/mask handling
>   3 files changed, 52 insertions(+), 23 deletions(-)
>  --- a/drivers/net/wireless/ath/ath10k/mac.c
>  +++ b/drivers/net/wireless/ath/ath10k/mac.c
> -@@ -2516,7 +2516,7 @@ static void ath10k_peer_assoc_h_vht(stru
> +@@ -2517,7 +2517,7 @@ static void ath10k_peer_assoc_h_vht(stru
>   	const u16 *vht_mcs_mask;
>   	u8 ampdu_factor;
>   	u8 max_nss, vht_mcs;
> @@ -32,7 +32,7 @@ v9: use SM/MS macros from code.h to simplify =

> shift/mask handling
> =

>   	if (WARN_ON(ath10k_mac_vif_chan(vif, &def)))
>   		return;
> -@@ -2576,23 +2576,45 @@ static void ath10k_peer_assoc_h_vht(stru
> +@@ -2577,23 +2577,45 @@ static void ath10k_peer_assoc_h_vht(stru
>   		__le16_to_cpu(vht_cap->vht_mcs.tx_highest);
>   	arg->peer_vht_rates.tx_mcs_set =3D ath10k_peer_assoc_h_vht_limit(
>   		__le16_to_cpu(vht_cap->vht_mcs.tx_mcs_map), vht_mcs_mask);
> @@ -92,7 +92,7 @@ v9: use SM/MS macros from code.h to simplify =

> shift/mask handling
>   }
> =

>   static void ath10k_peer_assoc_h_qos(struct ath10k *ar,
> -@@ -2744,9 +2766,9 @@ static int ath10k_peer_assoc_prepare(str
> +@@ -2745,9 +2767,9 @@ static int ath10k_peer_assoc_prepare(str
>   	ath10k_peer_assoc_h_crypto(ar, vif, sta, arg);
>   	ath10k_peer_assoc_h_rates(ar, vif, sta, arg);
>   	ath10k_peer_assoc_h_ht(ar, vif, sta, arg);
> @@ -105,7 +105,7 @@ v9: use SM/MS macros from code.h to simplify =

> shift/mask handling
>   }
>  --- a/drivers/net/wireless/ath/ath10k/wmi.c
>  +++ b/drivers/net/wireless/ath/ath10k/wmi.c
> -@@ -7615,12 +7615,7 @@ ath10k_wmi_peer_assoc_fill_10_4(struct a
> +@@ -7628,12 +7628,7 @@ ath10k_wmi_peer_assoc_fill_10_4(struct a
>   	struct wmi_10_4_peer_assoc_complete_cmd *cmd =3D buf;
> =

>   	ath10k_wmi_peer_assoc_fill_10_2(ar, buf, arg);
> @@ -121,7 +121,7 @@ v9: use SM/MS macros from code.h to simplify =

> shift/mask handling
>   static int
>  --- a/drivers/net/wireless/ath/ath10k/wmi.h
>  +++ b/drivers/net/wireless/ath/ath10k/wmi.h
> -@@ -6501,7 +6501,19 @@ struct wmi_10_2_peer_assoc_complete_cmd
> +@@ -6508,7 +6508,19 @@ struct wmi_10_2_peer_assoc_complete_cmd
>   	__le32 info0; /* WMI_PEER_ASSOC_INFO0_ */
>   } __packed;
> =

> diff --git =

> a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-han=
dling-for-VHT160-in-recent-firmwares.patch =

> b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-han=
dling-for-VHT160-in-recent-firmwares.patch
> index d6a1ef084989..bd0104592d5f 100644
> --- =

> a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-han=
dling-for-VHT160-in-recent-firmwares.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-han=
dling-for-VHT160-in-recent-firmwares.patch
> @@ -13,7 +13,7 @@ v2: fix trailing whitespace issue and fix some =

> typos within the commit note
>   2 files changed, 8 insertions(+), 10 deletions(-)
>  --- a/drivers/net/wireless/ath/ath10k/mac.c
>  +++ b/drivers/net/wireless/ath/ath10k/mac.c
> -@@ -4576,13 +4576,6 @@ static struct ieee80211_sta_vht_cap ath1
> +@@ -4585,13 +4585,6 @@ static struct ieee80211_sta_vht_cap ath1
>   		vht_cap.cap |=3D val;
>   	}
> =

> diff --git =

> a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-control=
ling-support-for-various-chipsets.patch =

> b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-control=
ling-support-for-various-chipsets.patch
> index fb49ed036a0a..65899cdd60b2 100644
> --- =

> a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-control=
ling-support-for-various-chipsets.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-control=
ling-support-for-various-chipsets.patch
> @@ -172,7 +172,7 @@ v13:
>   		.patch_load_addr =3D QCA9888_HW_2_0_PATCH_LOAD_ADDR,
>   		.uart_pin =3D 7,
>   		.cc_wraparound_type =3D ATH10K_HW_CC_WRAP_SHIFTED_EACH,
> -@@ -2811,6 +2817,10 @@ int ath10k_core_start(struct ath10k *ar,
> +@@ -2889,6 +2895,10 @@ int ath10k_core_start(struct ath10k *ar,
>   		goto err_hif_stop;
>   	}
> =

> @@ -183,7 +183,7 @@ v13:
>   	return 0;
> =

>   err_hif_stop:
> -@@ -3067,9 +3077,18 @@ static void ath10k_core_register_work(st
> +@@ -3147,9 +3157,18 @@ static void ath10k_core_register_work(st
>   		goto err_spectral_destroy;
>   	}
> =

> @@ -202,7 +202,7 @@ v13:
>   err_spectral_destroy:
>   	ath10k_spectral_destroy(ar);
>   err_debug_destroy:
> -@@ -3115,6 +3134,8 @@ void ath10k_core_unregister(struct ath10
> +@@ -3195,6 +3214,8 @@ void ath10k_core_unregister(struct ath10
>   	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
>   		return;
> =

> @@ -221,7 +221,7 @@ v13:
> =

>   #include "htt.h"
>   #include "htc.h"
> -@@ -1180,6 +1181,13 @@ struct ath10k {
> +@@ -1182,6 +1183,13 @@ struct ath10k {
>   	} testmode;
> =

>   	struct {
> @@ -467,7 +467,7 @@ v13:
>   static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map =3D {
>  --- a/drivers/net/wireless/ath/ath10k/wmi.c
>  +++ b/drivers/net/wireless/ath/ath10k/wmi.c
> -@@ -7435,6 +7435,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
> +@@ -7448,6 +7448,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
>   	return skb;
>   }
> =

> @@ -517,7 +517,7 @@ v13:
>   static struct sk_buff *
>   ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
>   			     enum wmi_sta_ps_mode psmode)
> -@@ -9092,6 +9135,9 @@ static const struct wmi_ops wmi_ops =3D {
> +@@ -9105,6 +9148,9 @@ static const struct wmi_ops wmi_ops =3D {
>   	.fw_stats_fill =3D ath10k_wmi_main_op_fw_stats_fill,
>   	.get_vdev_subtype =3D ath10k_wmi_op_get_vdev_subtype,
>   	.gen_echo =3D ath10k_wmi_op_gen_echo,
> @@ -527,7 +527,7 @@ v13:
>   	/* .gen_bcn_tmpl not implemented */
>   	/* .gen_prb_tmpl not implemented */
>   	/* .gen_p2p_go_bcn_ie not implemented */
> -@@ -9162,6 +9208,8 @@ static const struct wmi_ops wmi_10_1_ops
> +@@ -9175,6 +9221,8 @@ static const struct wmi_ops wmi_10_1_ops
>   	.fw_stats_fill =3D ath10k_wmi_10x_op_fw_stats_fill,
>   	.get_vdev_subtype =3D ath10k_wmi_op_get_vdev_subtype,
>   	.gen_echo =3D ath10k_wmi_op_gen_echo,
> @@ -536,7 +536,7 @@ v13:
>   	/* .gen_bcn_tmpl not implemented */
>   	/* .gen_prb_tmpl not implemented */
>   	/* .gen_p2p_go_bcn_ie not implemented */
> -@@ -9234,6 +9282,8 @@ static const struct wmi_ops wmi_10_2_ops
> +@@ -9247,6 +9295,8 @@ static const struct wmi_ops wmi_10_2_ops
>   	.gen_delba_send =3D ath10k_wmi_op_gen_delba_send,
>   	.fw_stats_fill =3D ath10k_wmi_10x_op_fw_stats_fill,
>   	.get_vdev_subtype =3D ath10k_wmi_op_get_vdev_subtype,
> @@ -545,7 +545,7 @@ v13:
>   	/* .gen_pdev_enable_adaptive_cca not implemented */
>   };
> =

> -@@ -9305,6 +9355,8 @@ static const struct wmi_ops wmi_10_2_4_o
> +@@ -9318,6 +9368,8 @@ static const struct wmi_ops wmi_10_2_4_o
>   		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
>   	.get_vdev_subtype =3D ath10k_wmi_10_2_4_op_get_vdev_subtype,
>   	.gen_bb_timing =3D ath10k_wmi_10_2_4_op_gen_bb_timing,
> @@ -554,7 +554,7 @@ v13:
>   	/* .gen_bcn_tmpl not implemented */
>   	/* .gen_prb_tmpl not implemented */
>   	/* .gen_p2p_go_bcn_ie not implemented */
> -@@ -9385,6 +9437,8 @@ static const struct wmi_ops wmi_10_4_ops
> +@@ -9398,6 +9450,8 @@ static const struct wmi_ops wmi_10_4_ops
>   	.gen_pdev_bss_chan_info_req =3D =

> ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
>   	.gen_echo =3D ath10k_wmi_op_gen_echo,
>   	.gen_pdev_get_tpc_config =3D =

> ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
> @@ -565,7 +565,7 @@ v13:
>   int ath10k_wmi_attach(struct ath10k *ar)
>  --- a/drivers/net/wireless/ath/ath10k/wmi.h
>  +++ b/drivers/net/wireless/ath/ath10k/wmi.h
> -@@ -3007,6 +3007,41 @@ enum wmi_10_4_feature_mask {
> +@@ -3014,6 +3014,41 @@ enum wmi_10_4_feature_mask {
> =

>   };
> =

> diff --git =

> a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-defau=
lt.patch =

> b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-defau=
lt.patch
> index 80175367fe82..f10fe85c5f7a 100644
> --- =

> a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-defau=
lt.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-defau=
lt.patch
> @@ -16,9 +16,9 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
> =

>  --- a/drivers/net/wireless/ath/ath10k/core.h
>  +++ b/drivers/net/wireless/ath/ath10k/core.h
> -@@ -1230,6 +1230,10 @@ struct ath10k {
> - 	struct ath10k_bus_params bus_param;
> - 	struct completion peer_delete_done;
> +@@ -1235,6 +1235,10 @@ struct ath10k {
> + 	bool coex_support;
> + 	int coex_gpio_pin;
> =

>  +#ifdef CPTCFG_MAC80211_LEDS
>  +	const char *led_default_trigger;
> @@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
>   	if (ret)
>  --- a/drivers/net/wireless/ath/ath10k/mac.c
>  +++ b/drivers/net/wireless/ath/ath10k/mac.c
> -@@ -9124,7 +9124,7 @@ int ath10k_mac_register(struct ath10k *a
> +@@ -9141,7 +9141,7 @@ int ath10k_mac_register(struct ath10k *a
>   	ar->hw->weight_multiplier =3D ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
> =

>   #ifdef CPTCFG_MAC80211_LEDS
> diff --git =

> a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-uni=
t.patch =

> b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-uni=
t.patch
> index 149585b050aa..7742c2796664 100644
> --- =

> a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-uni=
t.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-uni=
t.patch
> @@ -20,7 +20,7 @@ Forwarded: =

> https://patchwork.kernel.org/patch/10986723/
> =

>  --- a/drivers/net/wireless/ath/ath10k/mac.c
>  +++ b/drivers/net/wireless/ath/ath10k/mac.c
> -@@ -1042,7 +1042,7 @@ static int ath10k_monitor_vdev_start(str
> +@@ -1043,7 +1043,7 @@ static int ath10k_monitor_vdev_start(str
>   	arg.channel.min_power =3D 0;
>   	arg.channel.max_power =3D channel->max_power * 2;
>   	arg.channel.max_reg_power =3D channel->max_reg_power * 2;
> @@ -29,7 +29,7 @@ Forwarded: =

> https://patchwork.kernel.org/patch/10986723/
> =

>   	reinit_completion(&ar->vdev_setup_done);
>   	reinit_completion(&ar->vdev_delete_done);
> -@@ -1488,7 +1488,7 @@ static int ath10k_vdev_start_restart(str
> +@@ -1489,7 +1489,7 @@ static int ath10k_vdev_start_restart(str
>   	arg.channel.min_power =3D 0;
>   	arg.channel.max_power =3D chandef->chan->max_power * 2;
>   	arg.channel.max_reg_power =3D chandef->chan->max_reg_power * 2;
> @@ -38,7 +38,7 @@ Forwarded: =

> https://patchwork.kernel.org/patch/10986723/
> =

>   	if (arvif->vdev_type =3D=3D WMI_VDEV_TYPE_AP) {
>   		arg.ssid =3D arvif->u.ap.ssid;
> -@@ -3169,7 +3169,7 @@ static int ath10k_update_channel_list(st
> +@@ -3170,7 +3170,7 @@ static int ath10k_update_channel_list(st
>   			ch->min_power =3D 0;
>   			ch->max_power =3D channel->max_power * 2;
>   			ch->max_reg_power =3D channel->max_reg_power * 2;
> diff --git =

> a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reductio=
n-for-US-regulatory-d.patch =

> b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reductio=
n-for-US-regulatory-d.patch
> index 36948e546f4c..1501d4bc0c71 100644
> --- =

> a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reductio=
n-for-US-regulatory-d.patch
> +++ =

> b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reductio=
n-for-US-regulatory-d.patch
> @@ -28,7 +28,7 @@ Forwarded: no
> =

>  --- a/drivers/net/wireless/ath/ath10k/mac.c
>  +++ b/drivers/net/wireless/ath/ath10k/mac.c
> -@@ -1010,6 +1010,40 @@ static inline int ath10k_vdev_setup_sync
> +@@ -1011,6 +1011,40 @@ static inline int ath10k_vdev_setup_sync
>   	return ar->last_wmi_vdev_start_status;
>   }
> =

> @@ -69,7 +69,7 @@ Forwarded: no
>   static int ath10k_monitor_vdev_start(struct ath10k *ar, int vdev_id)
>   {
>   	struct cfg80211_chan_def *chandef =3D NULL;
> -@@ -1042,7 +1076,8 @@ static int ath10k_monitor_vdev_start(str
> +@@ -1043,7 +1077,8 @@ static int ath10k_monitor_vdev_start(str
>   	arg.channel.min_power =3D 0;
>   	arg.channel.max_power =3D channel->max_power * 2;
>   	arg.channel.max_reg_power =3D channel->max_reg_power * 2;
> @@ -79,7 +79,7 @@ Forwarded: no
> =

>   	reinit_completion(&ar->vdev_setup_done);
>   	reinit_completion(&ar->vdev_delete_done);
> -@@ -1488,7 +1523,8 @@ static int ath10k_vdev_start_restart(str
> +@@ -1489,7 +1524,8 @@ static int ath10k_vdev_start_restart(str
>   	arg.channel.min_power =3D 0;
>   	arg.channel.max_power =3D chandef->chan->max_power * 2;
>   	arg.channel.max_reg_power =3D chandef->chan->max_reg_power * 2;
> @@ -89,7 +89,7 @@ Forwarded: no
> =

>   	if (arvif->vdev_type =3D=3D WMI_VDEV_TYPE_AP) {
>   		arg.ssid =3D arvif->u.ap.ssid;
> -@@ -3169,7 +3205,8 @@ static int ath10k_update_channel_list(st
> +@@ -3170,7 +3206,8 @@ static int ath10k_update_channel_list(st
>   			ch->min_power =3D 0;
>   			ch->max_power =3D channel->max_power * 2;
>   			ch->max_reg_power =3D channel->max_reg_power * 2;
> diff --git =

> a/package/kernel/mac80211/patches/brcm/300-brcmfmac-add-stub-for-monitor-=
interface-xmit.patch =

> b/package/kernel/mac80211/patches/brcm/300-brcmfmac-add-stub-for-monitor-=
interface-xmit.patch
> deleted file mode 100644
> index 8280918fa230..000000000000
> --- =

> a/package/kernel/mac80211/patches/brcm/300-brcmfmac-add-stub-for-monitor-=
interface-xmit.patch
> +++ /dev/null
> @@ -1,100 +0,0 @@
> -From: =3D?UTF-8?q?Rafa=3DC5=3D82=3D20Mi=3DC5=3D82ecki?=3D <rafal@milecki=
.pl>
> -Date: Fri, 27 Mar 2020 13:40:50 +0100
> -Subject: [PATCH] brcmfmac: add stub for monitor interface xmit
> -MIME-Version: 1.0
> -Content-Type: text/plain; charset=3DUTF-8
> -Content-Transfer-Encoding: 8bit
> -
> -According to the struct net_device_ops documentation .ndo_start_xmit =

> is
> -"Required; cannot be NULL.". Missing it may crash kernel easily:
> -
> -[  341.216709] Unable to handle kernel NULL pointer dereference at =

> virtual address 00000000
> -[  341.224836] pgd =3D 26088755
> -[  341.227544] [00000000] *pgd=3D00000000
> -[  341.231135] Internal error: Oops: 80000007 [#1] SMP ARM
> -[  341.236367] Modules linked in: pppoe ppp_async iptable_nat =

> brcmfmac xt_state xt_nat xt_conntrack xt_REDIRECT xt_MASQU
> -[  341.304689] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.24 #0
> -[  341.310621] Hardware name: BCM5301X
> -[  341.314116] PC is at 0x0
> -[  341.316664] LR is at dev_hard_start_xmit+0x8c/0x11c
> -[  341.321546] pc : [<00000000>]    lr : [<c0469fa8>]    psr: =

> 60000113
> -[  341.327821] sp : c0801c30  ip : c610cf00  fp : c08048e4
> -[  341.333051] r10: c073a63a  r9 : c08044dc  r8 : c6c04e00
> -[  341.338283] r7 : 00000000  r6 : c60f5000  r5 : 00000000  r4 : =

> c6a9c3c0
> -[  341.344820] r3 : 00000000  r2 : bf25a13c  r1 : c60f5000  r0 : =

> c6a9c3c0
> -[  341.351358] Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  =

> Segment none
> -[  341.358504] Control: 10c5387d  Table: 0611c04a  DAC: 00000051
> -[  341.364257] Process swapper/0 (pid: 0, stack limit =3D 0xc68ed0ca)
> -[  341.370271] Stack: (0xc0801c30 to 0xc0802000)
> -[  341.374633] 1c20:                                     c6e7d480 =

> c0802d00 c60f5050 c0801c6c
> -[  341.382825] 1c40: c60f5000 c6a9c3c0 c6f90000 c6f9005c c6c04e00 =

> c60f5000 00000000 c6f9005c
> -[  341.391015] 1c60: 00000000 c04a033c 00f90200 00000010 c6a9c3c0 =

> c6a9c3c0 c6f90000 00000000
> -[  341.399205] 1c80: 00000000 00000000 00000000 c046a7ac c6f9005c =

> 00000001 fffffff4 00000000
> -[  341.407395] 1ca0: c6f90200 00000000 c60f5000 c0479550 00000000 =

> c6f90200 c6a9c3c0 16000000
> -[  341.415586] 1cc0: 0000001c 6f4ad52f c6197040 b6df9387 36000000 =

> c0520404 c073a80c c6a9c3c0
> -[  341.423777] 1ce0: 00000000 c6d643c0 c6a9c3c0 c0800024 00000001 =

> 00000001 c6d643c8 c6a9c3c0
> -[  341.431967] 1d00: c081b9c0 c7abca80 c610c840 c081b9c0 0000001c =

> 00400000 c6bc5e6c c0522fb4
> -[  341.440157] 1d20: c6d64400 00000004 c6bc5e0a 00000000 c60f5000 =

> c7abca80 c081b9c0 c0522f54
> -[  341.448348] 1d40: c6a9c3c0 c7abca80 c0803e48 c0549c94 c610c828 =

> 0000000a c0801d74 00000003
> -[  341.456538] 1d60: c6ec8f0a 00000000 c60f5000 c7abca80 c081b9c0 =

> c0548520 0000000a 00000000
> -[  341.464728] 1d80: 00000000 003a0000 00000000 00000000 00000000 =

> 00000000 00000000 00000000
> -[  341.472919] 1da0: 000002ff 00000000 00000000 16000000 00000000 =

> 00000000 00000000 00000000
> -[  341.481110] 1dc0: 00000000 0000008f 00000000 00000000 00000000 =

> 2d132a69 c6bc5e40 00000000
> -[  341.489300] 1de0: c6bc5e40 c6a9c3c0 00000000 c6ec8e50 00000001 =

> c054b070 00000001 00000000
> -[  341.497490] 1e00: c0807200 c6bc5e00 00000000 ffffe000 00000100 =

> c054aea4 00000000 00000000
> -[  341.505681] 1e20: 00000122 00400000 c0802d00 c0172e80 6f56a70e =

> ffffffff 6f56a70e c7eb9cc0
> -[  341.513871] 1e40: c7eb82c0 00000000 c0801e60 c017309c 00000000 =

> 00000000 07780000 c07382c0
> -[  341.522061] 1e60: 00000000 c7eb9cc0 c0739cc0 c0803f74 c0801e70 =

> c0801e70 c0801ea4 c013d380
> -[  341.530253] 1e80: 00000000 000000a0 00000001 c0802084 c0802080 =

> 40000001 ffffe000 00000100
> -[  341.538443] 1ea0: c0802080 c01021e8 c8803100 10c5387d 00000000 =

> c07341f0 c0739880 0000000a
> -[  341.546633] 1ec0: c0734180 00001017 c0802d00 c062aa98 00200002 =

> c062aa60 c8803100 c073984c
> -[  341.554823] 1ee0: 00000000 00000001 00000000 c7810000 c8803100 =

> 10c5387d 00000000 c011c188
> -[  341.563014] 1f00: c073984c c015f0f8 c0804244 c0815ae4 c880210c =

> c8802100 c0801f40 c037c584
> -[  341.571204] 1f20: c01035f8 60000013 ffffffff c0801f74 c080afd4 =

> c0800000 10c5387d c0101a8c
> -[  341.579395] 1f40: 00000000 004ac9dc c7eba4b4 c010ee60 ffffe000 =

> c0803e68 c0803ea8 00000001
> -[  341.587587] 1f60: c080afd4 c062ca20 10c5387d 00000000 00000000 =

> c0801f90 c01035f4 c01035f8
> -[  341.595776] 1f80: 60000013 ffffffff 00000051 00000000 ffffe000 =

> c013ff50 000000ce c0803e40
> -[  341.603967] 1fa0: c082216c 00000000 00000001 c072ba38 10c5387d =

> c0140214 c0822184 c0700df8
> -[  341.612157] 1fc0: ffffffff ffffffff 00000000 c070058c c072ba38 =

> 2d162e71 00000000 c0700330
> -[  341.620348] 1fe0: 00000051 10c0387d 000000ff 00a521d0 413fc090 =

> 00000000 00000000 00000000
> -[  341.628558] [<c0469fa8>] (dev_hard_start_xmit) from [<c04a033c>] =

> (sch_direct_xmit+0xe4/0x2bc)
> -[  341.637106] [<c04a033c>] (sch_direct_xmit) from [<c046a7ac>] =

> (__dev_queue_xmit+0x6a4/0x72c)
> -[  341.645481] [<c046a7ac>] (__dev_queue_xmit) from [<c0520404>] =

> (ip6_finish_output2+0x18c/0x434)
> -[  341.654112] [<c0520404>] (ip6_finish_output2) from [<c0522fb4>] =

> (ip6_output+0x5c/0xd0)
> -[  341.662053] [<c0522fb4>] (ip6_output) from [<c0549c94>] =

> (mld_sendpack+0x1a0/0x1a8)
> -[  341.669640] [<c0549c94>] (mld_sendpack) from [<c054b070>] =

> (mld_ifc_timer_expire+0x1cc/0x2e4)
> -[  341.678111] [<c054b070>] (mld_ifc_timer_expire) from [<c0172e80>] =

> (call_timer_fn.constprop.3+0x24/0x98)
> -[  341.687527] [<c0172e80>] (call_timer_fn.constprop.3) from =

> [<c017309c>] (run_timer_softirq+0x1a8/0x1e4)
> -[  341.696860] [<c017309c>] (run_timer_softirq) from [<c01021e8>] =

> (__do_softirq+0x120/0x2b0)
> -[  341.705066] [<c01021e8>] (__do_softirq) from [<c011c188>] =

> (irq_exit+0x78/0x84)
> -[  341.712317] [<c011c188>] (irq_exit) from [<c015f0f8>] =

> (__handle_domain_irq+0x60/0xb4)
> -[  341.720179] [<c015f0f8>] (__handle_domain_irq) from [<c037c584>] =

> (gic_handle_irq+0x4c/0x90)
> -[  341.728549] [<c037c584>] (gic_handle_irq) from [<c0101a8c>] =

> (__irq_svc+0x6c/0x90)
> -
> -Fixes: 20f2c5fa3af0 ("brcmfmac: add initial support for monitor =

> mode")
> -Signed-off-by: Rafa=B3 Mi=B3ecki <rafal@milecki.pl>
> ----
> - drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c | 9 =

> +++++++++
> - 1 file changed, 9 insertions(+)
> -
> ---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
> -+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
> -@@ -746,9 +746,18 @@ static int brcmf_net_mon_stop(struct net
> - 	return err;
> - }
> -
> -+static netdev_tx_t brcmf_net_mon_start_xmit(struct sk_buff *skb,
> -+					    struct net_device *ndev)
> -+{
> -+	dev_kfree_skb_any(skb);
> -+
> -+	return NETDEV_TX_OK;
> -+}
> -+
> - static const struct net_device_ops brcmf_netdev_ops_mon =3D {
> - 	.ndo_open =3D brcmf_net_mon_open,
> - 	.ndo_stop =3D brcmf_net_mon_stop,
> -+	.ndo_start_xmit =3D brcmf_net_mon_start_xmit,
> - };
> -
> - int brcmf_net_mon_attach(struct brcmf_if *ifp)
> diff --git =

> a/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch =

> b/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
> index 12f907dcb5ae..93b6992f729c 100644
> --- =

> a/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
> +++ =

> b/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
> @@ -1,6 +1,6 @@
>  --- a/local-symbols
>  +++ b/local-symbols
> -@@ -416,43 +416,6 @@ USB_SIERRA_NET=3D
> +@@ -417,43 +417,6 @@ USB_SIERRA_NET=3D
>   USB_VL600=3D
>   USB_NET_CH9200=3D
>   USB_NET_AQC111=3D
> @@ -192,7 +192,7 @@
>   	select BRCMUTIL
>  --- a/Kconfig.local
>  +++ b/Kconfig.local
> -@@ -1252,117 +1252,6 @@ config BACKPORTED_USB_NET_CH9200
> +@@ -1255,117 +1255,6 @@ config BACKPORTED_USB_NET_CH9200
>   config BACKPORTED_USB_NET_AQC111
>   	tristate
>   	default USB_NET_AQC111
> diff --git =

> a/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eepro=
m.patch =

> b/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eepro=
m.patch
> index 968adb71e2e9..6cd504228f05 100644
> --- =

> a/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eepro=
m.patch
> +++ =

> b/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eepro=
m.patch
> @@ -1,6 +1,6 @@
>  --- a/local-symbols
>  +++ b/local-symbols
> -@@ -317,6 +317,7 @@ RT2X00_LIB_FIRMWARE=3D
> +@@ -318,6 +318,7 @@ RT2X00_LIB_FIRMWARE=3D
>   RT2X00_LIB_CRYPTO=3D
>   RT2X00_LIB_LEDS=3D
>   RT2X00_LIB_DEBUGFS=3D
> diff --git =

> a/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencie=
s.patch =

> b/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencie=
s.patch
> index 5fe76161432a..5556f9b72a65 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencie=
s.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencie=
s.patch
> @@ -687,7 +687,7 @@
>   #endif /* AES_GMAC_H */
>  --- a/net/mac80211/key.h
>  +++ b/net/mac80211/key.h
> -@@ -88,7 +88,7 @@ struct ieee80211_key {
> +@@ -89,7 +89,7 @@ struct ieee80211_key {
>   			 * Management frames.
>   			 */
>   			u8 rx_pn[IEEE80211_NUM_TIDS + 1][IEEE80211_CCMP_PN_LEN];
> diff --git =

> a/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_a=
p.patch =

> b/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_a=
p.patch
> index 8e0fddd10ac9..cceb6d5d7ddf 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_a=
p.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_a=
p.patch
> @@ -2,7 +2,7 @@ Used for AP+STA support in OpenWrt - preserve AP mode =

> keys across STA reconnects
> =

>  --- a/net/mac80211/cfg.c
>  +++ b/net/mac80211/cfg.c
> -@@ -1172,7 +1172,6 @@ static int ieee80211_stop_ap(struct wiph
> +@@ -1186,7 +1186,6 @@ static int ieee80211_stop_ap(struct wiph
>   	sdata->vif.bss_conf.ftmr_params =3D NULL;
> =

>   	__sta_info_flush(sdata, true);
> diff --git =

> a/package/kernel/mac80211/patches/subsys/130-disable-fils.patch =

> b/package/kernel/mac80211/patches/subsys/130-disable-fils.patch
> index f370dd52ee6a..5ca64d2c730c 100644
> --- a/package/kernel/mac80211/patches/subsys/130-disable-fils.patch
> +++ b/package/kernel/mac80211/patches/subsys/130-disable-fils.patch
> @@ -21,7 +21,7 @@ Disable FILS support, since it pulls in crypto hash =

> support
>    * FILS AEAD for (Re)Association Request/Response frames
>  --- a/net/mac80211/main.c
>  +++ b/net/mac80211/main.c
> -@@ -571,7 +571,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
> +@@ -586,7 +586,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
>   			   NL80211_FEATURE_MAC_ON_CREATE |
>   			   NL80211_FEATURE_USERSPACE_MPM |
>   			   NL80211_FEATURE_FULL_AP_CLIENT_STATE;
> diff --git =

> a/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-swi=
tch-to-shash-CMAC-driver.patch =

> b/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-swi=
tch-to-shash-CMAC-driver.patch
> index 02e523878e0e..c3bf7ccc7abd 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-swi=
tch-to-shash-CMAC-driver.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-swi=
tch-to-shash-CMAC-driver.patch
> @@ -11,14 +11,13 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
> =

>  --- a/net/mac80211/aes_cmac.c
>  +++ b/net/mac80211/aes_cmac.c
> -@@ -19,50 +19,126 @@
> +@@ -19,67 +19,151 @@
>   #define CMAC_TLEN_256 16 /* CMAC TLen =3D 128 bits (16 octets) */
>   #define AAD_LEN 20
> =

>  -static const u8 zero[CMAC_TLEN_256];
> =

>  -void ieee80211_aes_cmac(struct crypto_shash *tfm, const u8 *aad,
> --			const u8 *data, size_t data_len, u8 *mic)
>  +void gf_mulx(u8 *pad)
>  +{
>  +	int i, carry;
> @@ -34,9 +33,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>  +void aes_cmac_vector(struct crypto_cipher *tfm, size_t num_elem,
>  +		     const u8 *addr[], const size_t *len, u8 *mac,
>  +		     size_t mac_len)
> - {
> --	SHASH_DESC_ON_STACK(desc, tfm);
> --	u8 out[AES_BLOCK_SIZE];
> ++{
>  +	u8 cbc[AES_BLOCK_SIZE], pad[AES_BLOCK_SIZE];
>  +	const u8 *pos, *end;
>  +	size_t i, e, left, total_len;
> @@ -88,30 +85,48 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>  +	crypto_cipher_encrypt_one(tfm, pad, pad);
>  +	memcpy(mac, pad, mac_len);
>  +}
> ++
> ++
> ++void ieee80211_aes_cmac(struct crypto_cipher *tfm, const u8 *aad,
> + 			const u8 *data, size_t data_len, u8 *mic)
> + {
> +-	SHASH_DESC_ON_STACK(desc, tfm);
> +-	u8 out[AES_BLOCK_SIZE];
> ++	const u8 *addr[4];
> ++	size_t len[4];
> ++	u8 zero[CMAC_TLEN];
> + 	const __le16 *fc;
> =

>  -	desc->tfm =3D tfm;
> -
> +-
>  -	crypto_shash_init(desc);
>  -	crypto_shash_update(desc, aad, AAD_LEN);
> --	crypto_shash_update(desc, data, data_len - CMAC_TLEN);
> --	crypto_shash_finup(desc, zero, CMAC_TLEN, out);
> -+void ieee80211_aes_cmac(struct crypto_cipher *tfm, const u8 *aad,
> -+			const u8 *data, size_t data_len, u8 *mic)
> -+{
> -+	const u8 *addr[3];
> -+	size_t len[3];
> -+	u8 zero[CMAC_TLEN];
> -+
>  +	memset(zero, 0, CMAC_TLEN);
>  +	addr[0] =3D aad;
>  +	len[0] =3D AAD_LEN;
> -+	addr[1] =3D data;
> -+	len[1] =3D data_len - CMAC_TLEN;
> -+	addr[2] =3D zero;
> -+	len[2] =3D CMAC_TLEN;
> -
> + 	fc =3D (const __le16 *)aad;
> + 	if (ieee80211_is_beacon(*fc)) {
> + 		/* mask Timestamp field to zero */
> +-		crypto_shash_update(desc, zero, 8);
> +-		crypto_shash_update(desc, data + 8, data_len - 8 - CMAC_TLEN);
> ++		addr[1] =3D zero;
> ++		len[1] =3D 8;
> ++		addr[2] =3D data + 8;
> ++		len[2] =3D data_len - 8 - CMAC_TLEN;
> ++		addr[3] =3D zero;
> ++		len[3] =3D CMAC_TLEN;
> ++		aes_cmac_vector(tfm, 4, addr, len, mic, CMAC_TLEN);
> + 	} else {
> +-		crypto_shash_update(desc, data, data_len - CMAC_TLEN);
> ++		addr[1] =3D data;
> ++		len[1] =3D data_len - CMAC_TLEN;
> ++		addr[2] =3D zero;
> ++		len[2] =3D CMAC_TLEN;
> ++		aes_cmac_vector(tfm, 3, addr, len, mic, CMAC_TLEN);
> + 	}
> +-	crypto_shash_finup(desc, zero, CMAC_TLEN, out);
> +-
>  -	memcpy(mic, out, CMAC_TLEN);
> -+	aes_cmac_vector(tfm, 3, addr, len, mic, CMAC_TLEN);
>   }
> =

>  -void ieee80211_aes_cmac_256(struct crypto_shash *tfm, const u8 *aad,
> @@ -119,25 +134,41 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   			    const u8 *data, size_t data_len, u8 *mic)
>   {
>  -	SHASH_DESC_ON_STACK(desc, tfm);
> -+	const u8 *addr[3];
> -+	size_t len[3];
> ++	const u8 *addr[4];
> ++	size_t len[4];
>  +	u8 zero[CMAC_TLEN_256];
> -+
> -+	memset(zero, 0, CMAC_TLEN_256);
> -+	addr[0] =3D aad;
> -+	len[0] =3D AAD_LEN;
> -+	addr[1] =3D data;
> -+	len[1] =3D data_len - CMAC_TLEN_256;
> -+	addr[2] =3D zero;
> -+	len[2] =3D CMAC_TLEN_256;
> + 	const __le16 *fc;
> =

>  -	desc->tfm =3D tfm;
>  -
>  -	crypto_shash_init(desc);
>  -	crypto_shash_update(desc, aad, AAD_LEN);
> --	crypto_shash_update(desc, data, data_len - CMAC_TLEN_256);
> ++	memset(zero, 0, CMAC_TLEN_256);
> ++	addr[0] =3D aad;
> ++	len[0] =3D AAD_LEN;
> ++	addr[1] =3D data;
> + 	fc =3D (const __le16 *)aad;
> + 	if (ieee80211_is_beacon(*fc)) {
> + 		/* mask Timestamp field to zero */
> +-		crypto_shash_update(desc, zero, 8);
> +-		crypto_shash_update(desc, data + 8,
> +-				    data_len - 8 - CMAC_TLEN_256);
> ++		addr[1] =3D zero;
> ++		len[1] =3D 8;
> ++		addr[2] =3D data + 8;
> ++		len[2] =3D data_len - 8 - CMAC_TLEN_256;
> ++		addr[3] =3D zero;
> ++		len[3] =3D CMAC_TLEN_256;
> ++		aes_cmac_vector(tfm, 4, addr, len, mic, CMAC_TLEN_256);
> + 	} else {
> +-		crypto_shash_update(desc, data, data_len - CMAC_TLEN_256);
> ++		addr[1] =3D data;
> ++		len[1] =3D data_len - CMAC_TLEN_256;
> ++		addr[2] =3D zero;
> ++		len[2] =3D CMAC_TLEN_256;
> ++		aes_cmac_vector(tfm, 3, addr, len, mic, CMAC_TLEN_256);
> + 	}
>  -	crypto_shash_finup(desc, zero, CMAC_TLEN_256, mic);
> -+	aes_cmac_vector(tfm, 3, addr, len, mic, CMAC_TLEN_256);
>   }
> =

>  -struct crypto_shash *ieee80211_aes_cmac_key_setup(const u8 key[],
> @@ -188,7 +219,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   #endif /* AES_CMAC_H */
>  --- a/net/mac80211/key.h
>  +++ b/net/mac80211/key.h
> -@@ -93,7 +93,7 @@ struct ieee80211_key {
> +@@ -94,7 +94,7 @@ struct ieee80211_key {
>   		} ccmp;
>   		struct {
>   			u8 rx_pn[IEEE80211_CMAC_PN_LEN];
> diff --git =

> a/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch =

> b/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch
> index 668064cfa89d..84cfaea8a4d9 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch
> @@ -1,6 +1,6 @@
>  --- a/net/mac80211/tx.c
>  +++ b/net/mac80211/tx.c
> -@@ -4113,6 +4113,12 @@ out:
> +@@ -4119,6 +4119,12 @@ out:
>   netdev_tx_t ieee80211_subif_start_xmit(struct sk_buff *skb,
>   				       struct net_device *dev)
>   {
> diff --git =

> a/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch =

> b/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
> index 65d84a7b7e62..75957d31a868 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
> @@ -1,6 +1,6 @@
>  --- a/net/mac80211/main.c
>  +++ b/net/mac80211/main.c
> -@@ -314,7 +314,7 @@ void ieee80211_restart_hw(struct ieee802
> +@@ -316,7 +316,7 @@ void ieee80211_restart_hw(struct ieee802
>   }
>   EXPORT_SYMBOL(ieee80211_restart_hw);
> =

> @@ -9,7 +9,7 @@
>   static int ieee80211_ifa_changed(struct notifier_block *nb,
>   				 unsigned long data, void *arg)
>   {
> -@@ -373,7 +373,7 @@ static int ieee80211_ifa_changed(struct
> +@@ -375,7 +375,7 @@ static int ieee80211_ifa_changed(struct
>   }
>   #endif
> =

> @@ -18,7 +18,7 @@
>   static int ieee80211_ifa6_changed(struct notifier_block *nb,
>   				  unsigned long data, void *arg)
>   {
> -@@ -1270,14 +1270,14 @@ int ieee80211_register_hw(struct ieee802
> +@@ -1291,14 +1291,14 @@ int ieee80211_register_hw(struct ieee802
> =

>   	rtnl_unlock();
> =

> @@ -35,7 +35,7 @@
>   	local->ifa6_notifier.notifier_call =3D ieee80211_ifa6_changed;
>   	result =3D register_inet6addr_notifier(&local->ifa6_notifier);
>   	if (result)
> -@@ -1286,13 +1286,13 @@ int ieee80211_register_hw(struct ieee802
> +@@ -1307,13 +1307,13 @@ int ieee80211_register_hw(struct ieee802
> =

>   	return 0;
> =

> @@ -51,8 +51,8 @@
>  +#if defined(__disabled__CONFIG_INET) || =

> defined(__disabled__CONFIG_IPV6)
>    fail_ifa:
>   #endif
> - 	rtnl_lock();
> -@@ -1320,10 +1320,10 @@ void ieee80211_unregister_hw(struct ieee
> + 	wiphy_unregister(local->hw.wiphy);
> +@@ -1341,10 +1341,10 @@ void ieee80211_unregister_hw(struct ieee
>   	tasklet_kill(&local->tx_pending_tasklet);
>   	tasklet_kill(&local->tasklet);
> =

> diff --git =

> a/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizi=
ng.patch =

> b/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizi=
ng.patch
> index 8c019530d173..13fb2fd077e4 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizi=
ng.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizi=
ng.patch
> @@ -24,7 +24,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
> =

>  --- a/net/mac80211/ieee80211_i.h
>  +++ b/net/mac80211/ieee80211_i.h
> -@@ -1786,6 +1786,9 @@ int ieee80211_tx_control_port(struct wip
> +@@ -1801,6 +1801,9 @@ int ieee80211_tx_control_port(struct wip
>   			      const u8 *dest, __be16 proto, bool unencrypted);
>   int ieee80211_probe_mesh_link(struct wiphy *wiphy, struct =

> net_device *dev,
>   			      const u8 *buf, size_t len);
> @@ -36,7 +36,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   void ieee80211_apply_htcap_overrides(struct ieee80211_sub_if_data =

> *sdata,
>  --- a/net/mac80211/status.c
>  +++ b/net/mac80211/status.c
> -@@ -829,6 +829,11 @@ void ieee80211_tx_monitor(struct ieee802
> +@@ -828,6 +828,11 @@ void ieee80211_tx_monitor(struct ieee802
>   	struct net_device *prev_dev =3D NULL;
>   	int rtap_len;
> =

> @@ -50,7 +50,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   	if (WARN_ON_ONCE(skb_headroom(skb) < rtap_len)) {
>  --- a/net/mac80211/tx.c
>  +++ b/net/mac80211/tx.c
> -@@ -1936,37 +1936,53 @@ static bool ieee80211_tx(struct ieee8021
> +@@ -1937,37 +1937,53 @@ static bool ieee80211_tx(struct ieee8021
>   }
> =

>   /* device xmit handlers */
> @@ -123,7 +123,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   		wiphy_debug(local->hw.wiphy,
>   			    "failed to reallocate TX buffer\n");
>   		return -ENOMEM;
> -@@ -1982,18 +1998,8 @@ void ieee80211_xmit(struct ieee80211_sub
> +@@ -1983,18 +1999,8 @@ void ieee80211_xmit(struct ieee80211_sub
>   	struct ieee80211_local *local =3D sdata->local;
>   	struct ieee80211_tx_info *info =3D IEEE80211_SKB_CB(skb);
>   	struct ieee80211_hdr *hdr;
> @@ -143,7 +143,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   		ieee80211_free_txskb(&local->hw, skb);
>   		return;
>   	}
> -@@ -2795,29 +2801,13 @@ static struct sk_buff *ieee80211_build_h
> +@@ -2796,29 +2802,13 @@ static struct sk_buff *ieee80211_build_h
>   	}
> =

>   	skb_pull(skb, skip_header_bytes);
> @@ -179,7 +179,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   	}
> =

>   	if (encaps_data)
> -@@ -3432,7 +3422,6 @@ static bool ieee80211_xmit_fast(struct i
> +@@ -3433,7 +3423,6 @@ static bool ieee80211_xmit_fast(struct i
>   	struct ieee80211_local *local =3D sdata->local;
>   	u16 ethertype =3D (skb->data[12] << 8) | skb->data[13];
>   	int extra_head =3D fast_tx->hdr_len - (ETH_HLEN - 2);
> @@ -187,7 +187,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   	struct ethhdr eth;
>   	struct ieee80211_tx_info *info;
>   	struct ieee80211_hdr *hdr =3D (void *)fast_tx->hdr;
> -@@ -3484,10 +3473,7 @@ static bool ieee80211_xmit_fast(struct i
> +@@ -3485,10 +3474,7 @@ static bool ieee80211_xmit_fast(struct i
>   	 * as the may-encrypt argument for the resize to not account for
>   	 * more room than we already have in 'extra_head'
>   	 */
> diff --git =

> a/package/kernel/mac80211/patches/subsys/305-mac80211-fix-tx-status-for-n=
o-ack-cases.patch =

> b/package/kernel/mac80211/patches/subsys/305-mac80211-fix-tx-status-for-n=
o-ack-cases.patch
> deleted file mode 100644
> index 16108c83f3a3..000000000000
> --- =

> a/package/kernel/mac80211/patches/subsys/305-mac80211-fix-tx-status-for-n=
o-ack-cases.patch
> +++ /dev/null
> @@ -1,82 +0,0 @@
> -From: Markus Theil <markus.theil@tu-ilmenau.de>
> -Date: Wed, 18 Dec 2019 15:27:36 +0100
> -Subject: [PATCH] mac80211: fix tx status for no ack cases
> -
> -Before this patch, frames which where successfully transmitted =

> without
> -requiring acks where accounted as lost frames.
> -
> -Signed-off-by: Markus Theil <markus.theil@tu-ilmenau.de>
> -Link: =

> https://lore.kernel.org/r/20191218142736.15843-1-markus.theil@tu-ilmenau.=
de
> -Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ----
> -
> ---- a/net/mac80211/status.c
> -+++ b/net/mac80211/status.c
> -@@ -895,6 +895,7 @@ static void __ieee80211_tx_status(struct
> - 	int rates_idx;
> - 	bool send_to_cooked;
> - 	bool acked;
> -+	bool noack_success;
> - 	struct ieee80211_bar *bar;
> - 	int shift =3D 0;
> - 	int tid =3D IEEE80211_NUM_TIDS;
> -@@ -913,6 +914,8 @@ static void __ieee80211_tx_status(struct
> - 			clear_sta_flag(sta, WLAN_STA_SP);
> -
> - 		acked =3D !!(info->flags & IEEE80211_TX_STAT_ACK);
> -+		noack_success =3D !!(info->flags &
> -+				   IEEE80211_TX_STAT_NOACK_TRANSMITTED);
> -
> - 		/* mesh Peer Service Period support */
> - 		if (ieee80211_vif_is_mesh(&sta->sdata->vif) &&
> -@@ -977,12 +980,12 @@ static void __ieee80211_tx_status(struct
> - 			ieee80211_handle_filtered_frame(local, sta, skb);
> - 			return;
> - 		} else {
> --			if (!acked)
> -+			if (!acked && !noack_success)
> - 				sta->status_stats.retry_failed++;
> - 			sta->status_stats.retry_count +=3D retry_count;
> -
> - 			if (ieee80211_is_data_present(fc)) {
> --				if (!acked)
> -+				if (!acked && !noack_success)
> - 					sta->status_stats.msdu_failed[tid]++;
> -
> - 				sta->status_stats.msdu_retries[tid] +=3D
> -@@ -1020,7 +1023,7 @@ static void __ieee80211_tx_status(struct
> - 		}
> -
> - 		if (ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS)) {
> --			if (info->flags & IEEE80211_TX_STAT_ACK) {
> -+			if (acked) {
> - 				if (sta->status_stats.lost_packets)
> - 					sta->status_stats.lost_packets =3D 0;
> -
> -@@ -1028,6 +1031,8 @@ static void __ieee80211_tx_status(struct
> - 				if (test_sta_flag(sta, WLAN_STA_TDLS_PEER_AUTH))
> - 					sta->status_stats.last_tdls_pkt_time =3D
> - 						jiffies;
> -+			} else if (noack_success) {
> -+				/* nothing to do here, do not account as lost */
> - 			} else {
> - 				ieee80211_lost_packet(sta, info);
> - 			}
> -@@ -1148,7 +1153,7 @@ void ieee80211_tx_status_ext(struct ieee
> -
> - 		sta =3D container_of(pubsta, struct sta_info, sta);
> -
> --		if (!acked)
> -+		if (!acked && !noack_success)
> - 			sta->status_stats.retry_failed++;
> - 		sta->status_stats.retry_count +=3D retry_count;
> -
> -@@ -1163,6 +1168,8 @@ void ieee80211_tx_status_ext(struct ieee
> - 				sta->status_stats.last_tdls_pkt_time =3D jiffies;
> - 		} else if (test_sta_flag(sta, WLAN_STA_PS_STA)) {
> - 			return;
> -+		} else if (noack_success) {
> -+			/* nothing to do here, do not account as lost */
> - 		} else {
> - 			ieee80211_lost_packet(sta, info);
> - 		}
> diff --git =

> a/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_g=
ain.patch =

> b/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_g=
ain.patch
> index d909bcca73e0..f4573f124ab9 100644
> --- =

> a/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_g=
ain.patch
> +++ =

> b/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_g=
ain.patch
> @@ -1,6 +1,6 @@
>  --- a/include/net/cfg80211.h
>  +++ b/include/net/cfg80211.h
> -@@ -3458,6 +3458,7 @@ struct cfg80211_update_owe_info {
> +@@ -3552,6 +3552,7 @@ struct cfg80211_update_owe_info {
>    *	(as advertised by the nl80211 feature flag.)
>    * @get_tx_power: store the current TX power into the dbm variable;
>    *	return 0 if successful
> @@ -8,7 +8,7 @@
>    *
>    * @set_wds_peer: set the WDS peer for a WDS interface
>    *
> -@@ -3773,6 +3774,7 @@ struct cfg80211_ops {
> +@@ -3874,6 +3875,7 @@ struct cfg80211_ops {
>   				enum nl80211_tx_power_setting type, int mbm);
>   	int	(*get_tx_power)(struct wiphy *wiphy, struct wireless_dev *wdev,
>   				int *dbm);
> @@ -18,7 +18,7 @@
>   				const u8 *addr);
>  --- a/include/net/mac80211.h
>  +++ b/include/net/mac80211.h
> -@@ -1501,6 +1501,7 @@ enum ieee80211_smps_mode {
> +@@ -1504,6 +1504,7 @@ enum ieee80211_smps_mode {
>    *
>    * @power_level: requested transmit power (in dBm), backward =

> compatibility
>    *	value only that is set to the minimum of all interfaces
> @@ -26,7 +26,7 @@
>    *
>    * @chandef: the channel definition to tune to
>    * @radar_enabled: whether radar detection is enabled
> -@@ -1521,6 +1522,7 @@ enum ieee80211_smps_mode {
> +@@ -1524,6 +1525,7 @@ enum ieee80211_smps_mode {
>   struct ieee80211_conf {
>   	u32 flags;
>   	int power_level, dynamic_ps_timeout;
> @@ -36,9 +36,9 @@
>   	u8 ps_dtim_period;
>  --- a/include/uapi/linux/nl80211.h
>  +++ b/include/uapi/linux/nl80211.h
> -@@ -2400,6 +2400,9 @@ enum nl80211_commands {
> -  * @NL80211_ATTR_VLAN_ID: VLAN ID (1..4094) for the station and =

> VLAN group key
> -  *	(u16).
> +@@ -2470,6 +2470,9 @@ enum nl80211_commands {
> +  *	no roaming occurs between the reauth threshold and PMK =

> expiration,
> +  *	disassociation is still forced.
>    *
>  + * @NL80211_ATTR_WIPHY_ANTENNA_GAIN: Configured antenna gain. Used =

> to reduce
>  + *	transmit power to stay within regulatory limits. u32, dBi.
> @@ -46,9 +46,9 @@
>    * @NUM_NL80211_ATTR: total number of nl80211_attrs available
>    * @NL80211_ATTR_MAX: highest attribute number currently defined
>    * @__NL80211_ATTR_AFTER_LAST: internal use
> -@@ -2864,6 +2867,8 @@ enum nl80211_attrs {
> -
> - 	NL80211_ATTR_VLAN_ID,
> +@@ -2945,6 +2948,8 @@ enum nl80211_attrs {
> + 	NL80211_ATTR_PMK_LIFETIME,
> + 	NL80211_ATTR_PMK_REAUTH_THRESHOLD,
> =

>  +	NL80211_ATTR_WIPHY_ANTENNA_GAIN,
>  +
> @@ -77,7 +77,7 @@
>   static int ieee80211_set_wds_peer(struct wiphy *wiphy, struct =

> net_device *dev,
>   				  const u8 *addr)
>   {
> -@@ -4017,6 +4030,7 @@ const struct cfg80211_ops mac80211_confi
> +@@ -4004,6 +4017,7 @@ const struct cfg80211_ops mac80211_confi
>   	.set_wiphy_params =3D ieee80211_set_wiphy_params,
>   	.set_tx_power =3D ieee80211_set_tx_power,
>   	.get_tx_power =3D ieee80211_get_tx_power,
> @@ -87,7 +87,7 @@
>   	CFG80211_TESTMODE_CMD(ieee80211_testmode_cmd)
>  --- a/net/mac80211/ieee80211_i.h
>  +++ b/net/mac80211/ieee80211_i.h
> -@@ -1376,6 +1376,7 @@ struct ieee80211_local {
> +@@ -1380,6 +1380,7 @@ struct ieee80211_local {
>   	int dynamic_ps_forced_timeout;
> =

>   	int user_power_level; /* in dBm, for all interfaces */
> @@ -106,7 +106,7 @@
>   	u32 offchannel_flag;
> =

>   	offchannel_flag =3D local->hw.conf.flags & IEEE80211_CONF_OFFCHANNEL;
> -@@ -150,6 +150,12 @@ static u32 ieee80211_hw_conf_chan(struct
> +@@ -152,6 +152,12 @@ static u32 ieee80211_hw_conf_chan(struct
>   	}
>   	rcu_read_unlock();
> =

> @@ -119,7 +119,7 @@
>   	if (local->hw.conf.power_level !=3D power) {
>   		changed |=3D IEEE80211_CONF_CHANGE_POWER;
>   		local->hw.conf.power_level =3D power;
> -@@ -639,6 +645,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
> +@@ -656,6 +662,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
>   					 IEEE80211_RADIOTAP_MCS_HAVE_BW;
>   	local->hw.radiotap_vht_details =3D IEEE80211_RADIOTAP_VHT_KNOWN_GI |
>   					 IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH;
> @@ -129,15 +129,15 @@
>   	local->hw.max_mtu =3D IEEE80211_MAX_DATA_LEN;
>  --- a/net/wireless/nl80211.c
>  +++ b/net/wireless/nl80211.c
> -@@ -632,6 +632,7 @@ const struct nla_policy nl80211_policy[N
> - 	[NL80211_ATTR_TWT_RESPONDER] =3D { .type =3D NLA_FLAG },
> - 	[NL80211_ATTR_HE_OBSS_PD] =3D NLA_POLICY_NESTED(he_obss_pd_policy),
> - 	[NL80211_ATTR_VLAN_ID] =3D NLA_POLICY_RANGE(NLA_U16, 1, VLAN_N_VID - =

> 2),
> +@@ -661,6 +661,7 @@ const struct nla_policy nl80211_policy[N
> + 	[NL80211_ATTR_CONTROL_PORT_NO_PREAUTH] =3D { .type =3D NLA_FLAG },
> + 	[NL80211_ATTR_PMK_LIFETIME] =3D NLA_POLICY_MIN(NLA_U32, 1),
> + 	[NL80211_ATTR_PMK_REAUTH_THRESHOLD] =3D NLA_POLICY_RANGE(NLA_U8, 1, =

> 100),
>  +	[NL80211_ATTR_WIPHY_ANTENNA_GAIN] =3D { .type =3D NLA_U32 },
>   };
> =

>   /* policy for the key attributes */
> -@@ -2996,6 +2997,20 @@ static int nl80211_set_wiphy(struct sk_b
> +@@ -3132,6 +3133,20 @@ static int nl80211_set_wiphy(struct sk_b
>   		if (result)
>   			return result;
>   	}
> diff --git =

> a/package/network/utils/iw/patches/001-nl80211_h_sync.patch =

> b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
> index 57f05b711adf..5084c5d45fe1 100644
> --- a/package/network/utils/iw/patches/001-nl80211_h_sync.patch
> +++ b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
> @@ -1,6 +1,15 @@
>  --- a/nl80211.h
>  +++ b/nl80211.h
> -@@ -249,6 +249,22 @@
> +@@ -11,7 +11,7 @@
> +  * Copyright 2008 Jouni Malinen <jouni.malinen@atheros.com>
> +  * Copyright 2008 Colin McCabe <colin@cozybit.com>
> +  * Copyright 2015-2017	Intel Deutschland GmbH
> +- * Copyright (C) 2018-2019 Intel Corporation
> ++ * Copyright (C) 2018-2020 Intel Corporation
> +  *
> +  * Permission to use, copy, modify, and/or distribute this software =

> for any
> +  * purpose with or without fee is hereby granted, provided that the =

> above
> +@@ -249,6 +249,45 @@
>    */
> =

>   /**
> @@ -19,11 +28,34 @@
>  + * %NL80211_ATTR_VLAN_ID.
>  + */
>  +
> ++/**
> ++ * DOC: TID configuration
> ++ *
> ++ * TID config support can be checked in the %NL80211_ATTR_TID_CONFIG
> ++ * attribute given in wiphy capabilities.
> ++ *
> ++ * The necessary configuration parameters are mentioned in
> ++ * &enum nl80211_tid_config_attr and it will be passed to the
> ++ * %NL80211_CMD_SET_TID_CONFIG command in %NL80211_ATTR_TID_CONFIG.
> ++ *
> ++ * If the configuration needs to be applied for specific peer then =

> the MAC
> ++ * address of the peer needs to be passed in %NL80211_ATTR_MAC, =

> otherwise the
> ++ * configuration will be applied for all the connected peers in the =

> vif except
> ++ * any peers that have peer specific configuration for the TID by =

> default; if
> ++ * the %NL80211_TID_CONFIG_ATTR_OVERRIDE flag is set, peer specific =

> values
> ++ * will be overwritten.
> ++ *
> ++ * All this configuration is valid only for STA's current connection
> ++ * i.e. the configuration will be reset to default when the STA =

> connects back
> ++ * after disconnection/roaming, and this configuration will be =

> cleared when
> ++ * the interface goes down.
> ++ */
> ++
>  +/**
>    * enum nl80211_commands - supported nl80211 commands
>    *
>    * @NL80211_CMD_UNSPEC: unspecified command to catch errors
> -@@ -571,6 +587,14 @@
> +@@ -571,6 +610,14 @@
>    *	set of BSSID,frequency parameters is used (i.e., either the =

> enforcing
>    *	%NL80211_ATTR_MAC,%NL80211_ATTR_WIPHY_FREQ or the less strict
>    *	%NL80211_ATTR_MAC_HINT and %NL80211_ATTR_WIPHY_FREQ_HINT).
> @@ -38,31 +70,231 @@
>    *	%NL80211_ATTR_PREV_BSSID can be used to request a reassociation =

> within
>    *	the ESS in case the device is already associated and an =

> association with
>    *	a different BSS is desired.
> -@@ -2373,6 +2397,12 @@ enum nl80211_commands {
> +@@ -1101,6 +1148,9 @@
> +  *	peer MAC address and %NL80211_ATTR_FRAME is used to specify the =

> frame
> +  *	content. The frame is ethernet data.
> +  *
> ++ * @NL80211_CMD_SET_TID_CONFIG: Data frame TID specific =

> configuration
> ++ *	is passed using %NL80211_ATTR_TID_CONFIG attribute.
> ++ *
> +  * @NL80211_CMD_MAX: highest used command number
> +  * @__NL80211_CMD_AFTER_LAST: internal use
> +  */
> +@@ -1325,6 +1375,8 @@ enum nl80211_commands {
> +
> + 	NL80211_CMD_PROBE_MESH_LINK,
> +
> ++	NL80211_CMD_SET_TID_CONFIG,
> ++
> + 	/* add new commands above here */
> +
> + 	/* used to define NL80211_CMD_MAX below */
> +@@ -1580,7 +1632,8 @@ enum nl80211_commands {
> +  *	flag is included, then control port frames are sent over NL80211 =

> instead
> +  *	using %CMD_CONTROL_PORT_FRAME.  If control port routing over =

> NL80211 is
> +  *	to be used then userspace must also use the =

> %NL80211_ATTR_SOCKET_OWNER
> +- *	flag.
> ++ *	flag. When used with %NL80211_ATTR_CONTROL_PORT_NO_PREAUTH, =

> pre-auth
> ++ *	frames are not forwared over the control port.
> +  *
> +  * @NL80211_ATTR_TESTDATA: Testmode data blob, passed through to =

> the driver.
> +  *	We recommend using nested, driver-specific attributes within =

> this.
> +@@ -2373,6 +2426,53 @@ enum nl80211_commands {
>    *	the allowed channel bandwidth configurations. (u8 attribute)
>    *	Defined by IEEE P802.11ay/D4.0 section 9.4.2.251, Table 13.
>    *
>  + * @NL80211_ATTR_VLAN_ID: VLAN ID (1..4094) for the station and =

> VLAN group key
>  + *	(u16).
>  + *
> ++ * @NL80211_ATTR_HE_BSS_COLOR: nested attribute for BSS Color =

> Settings.
> ++ *
> ++ * @NL80211_ATTR_IFTYPE_AKM_SUITES: nested array attribute, with =

> each entry
> ++ *	using attributes from &enum nl80211_iftype_akm_attributes. This
> ++ *	attribute is sent in a response to %NL80211_CMD_GET_WIPHY =

> indicating
> ++ *	supported AKM suites capability per interface. AKMs advertised in
> ++ *	%NL80211_ATTR_AKM_SUITES are default capabilities if AKM suites =

> not
> ++ *	advertised for a specific interface type.
> ++ *
> ++ * @NL80211_ATTR_TID_CONFIG: TID specific configuration in a
> ++ *	nested attribute with &enum nl80211_tid_config_attr =

> sub-attributes;
> ++ *	on output (in wiphy attributes) it contains only the feature sub-
> ++ *	attributes.
> ++ *
> ++ * @NL80211_ATTR_CONTROL_PORT_NO_PREAUTH: disable preauth frame rx =

> on control
> ++ *	port in order to forward/receive them as ordinary data frames.
> ++ *
> ++ * @NL80211_ATTR_PMK_LIFETIME: Maximum lifetime for PMKSA in =

> seconds (u32,
> ++ *	dot11RSNAConfigPMKReauthThreshold; 0 is not a valid value).
> ++ *	An optional parameter configured through %NL80211_CMD_SET_PMKSA.
> ++ *	Drivers that trigger roaming need to know the lifetime of the
> ++ *	configured PMKSA for triggering the full vs. PMKSA caching based
> ++ *	authentication. This timeout helps authentication methods like =

> SAE,
> ++ *	where PMK gets updated only by going through a full (new SAE)
> ++ *	authentication instead of getting updated during an association =

> for EAP
> ++ *	authentication. No new full authentication within the PMK expiry =

> shall
> ++ *	result in a disassociation at the end of the lifetime.
> ++ *
> ++ * @NL80211_ATTR_PMK_REAUTH_THRESHOLD: Reauthentication threshold =

> time, in
> ++ *	terms of percentage of %NL80211_ATTR_PMK_LIFETIME
> ++ *	(u8, dot11RSNAConfigPMKReauthThreshold, 1..100). This is an =

> optional
> ++ *	parameter configured through %NL80211_CMD_SET_PMKSA. Requests the
> ++ *	driver to trigger a full authentication roam (without PMKSA =

> caching)
> ++ *	after the reauthentication threshold time, but before the PMK =

> lifetime
> ++ *	has expired.
> ++ *
> ++ *	Authentication methods like SAE need to be able to generate a =

> new PMKSA
> ++ *	entry without having to force a disconnection after the PMK =

> timeout. If
> ++ *	no roaming occurs between the reauth threshold and PMK =

> expiration,
> ++ *	disassociation is still forced.
> ++ *
>  + * @NL80211_ATTR_WIPHY_ANTENNA_GAIN: Configured antenna gain. Used =

> to reduce
>  + *	transmit power to stay within regulatory limits. u32, dBi.
>  + *
>    * @NUM_NL80211_ATTR: total number of nl80211_attrs available
>    * @NL80211_ATTR_MAX: highest attribute number currently defined
>    * @__NL80211_ATTR_AFTER_LAST: internal use
> -@@ -2835,6 +2865,10 @@ enum nl80211_attrs {
> +@@ -2835,6 +2935,21 @@ enum nl80211_attrs {
>   	NL80211_ATTR_WIPHY_EDMG_CHANNELS,
>   	NL80211_ATTR_WIPHY_EDMG_BW_CONFIG,
> =

>  +	NL80211_ATTR_VLAN_ID,
>  +
> ++	NL80211_ATTR_HE_BSS_COLOR,
> ++
> ++	NL80211_ATTR_IFTYPE_AKM_SUITES,
> ++
> ++	NL80211_ATTR_TID_CONFIG,
> ++
> ++	NL80211_ATTR_CONTROL_PORT_NO_PREAUTH,
> ++
> ++	NL80211_ATTR_PMK_LIFETIME,
> ++	NL80211_ATTR_PMK_REAUTH_THRESHOLD,
> ++
>  +	NL80211_ATTR_WIPHY_ANTENNA_GAIN,
>  +
>   	/* add attributes here, update the policy in nl80211.c */
> =

>   	__NL80211_ATTR_AFTER_LAST,
> -@@ -5484,6 +5518,14 @@ enum nl80211_feature_flags {
> +@@ -3554,6 +3669,8 @@ enum nl80211_wmm_rule {
> +  * @NL80211_FREQUENCY_ATTR_WMM: this channel has wmm limitations.
> +  *	This is a nested attribute that contains the wmm limitation per =

> AC.
> +  *	(see &enum nl80211_wmm_rule)
> ++ * @NL80211_FREQUENCY_ATTR_NO_HE: HE operation is not allowed on =

> this channel
> ++ *	in current regulatory domain.
> +  * @NL80211_FREQUENCY_ATTR_MAX: highest frequency attribute number
> +  *	currently defined
> +  * @__NL80211_FREQUENCY_ATTR_AFTER_LAST: internal use
> +@@ -3583,6 +3700,7 @@ enum nl80211_frequency_attr {
> + 	NL80211_FREQUENCY_ATTR_NO_20MHZ,
> + 	NL80211_FREQUENCY_ATTR_NO_10MHZ,
> + 	NL80211_FREQUENCY_ATTR_WMM,
> ++	NL80211_FREQUENCY_ATTR_NO_HE,
> +
> + 	/* keep last */
> + 	__NL80211_FREQUENCY_ATTR_AFTER_LAST,
> +@@ -3780,6 +3898,7 @@ enum nl80211_sched_scan_match_attr {
> +  * @NL80211_RRF_NO_HT40PLUS: channels can't be used in HT40+ =

> operation
> +  * @NL80211_RRF_NO_80MHZ: 80MHz operation not allowed
> +  * @NL80211_RRF_NO_160MHZ: 160MHz operation not allowed
> ++ * @NL80211_RRF_NO_HE: HE operation not allowed
> +  */
> + enum nl80211_reg_rule_flags {
> + 	NL80211_RRF_NO_OFDM		=3D 1<<0,
> +@@ -3797,6 +3916,7 @@ enum nl80211_reg_rule_flags {
> + 	NL80211_RRF_NO_HT40PLUS		=3D 1<<14,
> + 	NL80211_RRF_NO_80MHZ		=3D 1<<15,
> + 	NL80211_RRF_NO_160MHZ		=3D 1<<16,
> ++	NL80211_RRF_NO_HE		=3D 1<<17,
> + };
> +
> + #define NL80211_RRF_PASSIVE_SCAN	NL80211_RRF_NO_IR
> +@@ -4503,6 +4623,7 @@ enum nl80211_key_default_types {
> +  *	See &enum nl80211_key_default_types.
> +  * @NL80211_KEY_MODE: the mode from enum nl80211_key_mode.
> +  *	Defaults to @NL80211_KEY_RX_TX.
> ++ * @NL80211_KEY_DEFAULT_BEACON: flag indicating default Beacon =

> frame key
> +  *
> +  * @__NL80211_KEY_AFTER_LAST: internal
> +  * @NL80211_KEY_MAX: highest key attribute
> +@@ -4518,6 +4639,7 @@ enum nl80211_key_attributes {
> + 	NL80211_KEY_TYPE,
> + 	NL80211_KEY_DEFAULT_TYPES,
> + 	NL80211_KEY_MODE,
> ++	NL80211_KEY_DEFAULT_BEACON,
> +
> + 	/* keep last */
> + 	__NL80211_KEY_AFTER_LAST,
> +@@ -4674,6 +4796,69 @@ enum nl80211_tx_power_setting {
> + };
> +
> + /**
> ++ * enum nl80211_tid_config - TID config state
> ++ * @NL80211_TID_CONFIG_ENABLE: Enable config for the TID
> ++ * @NL80211_TID_CONFIG_DISABLE: Disable config for the TID
> ++ */
> ++enum nl80211_tid_config {
> ++	NL80211_TID_CONFIG_ENABLE,
> ++	NL80211_TID_CONFIG_DISABLE,
> ++};
> ++
> ++/* enum nl80211_tid_config_attr - TID specific configuration.
> ++ * @NL80211_TID_CONFIG_ATTR_PAD: pad attribute for 64-bit values
> ++ * @NL80211_TID_CONFIG_ATTR_VIF_SUPP: a bitmap (u64) of attributes =

> supported
> ++ *	for per-vif configuration; doesn't list the ones that are generic
> ++ *	(%NL80211_TID_CONFIG_ATTR_TIDS, =

> %NL80211_TID_CONFIG_ATTR_OVERRIDE).
> ++ * @NL80211_TID_CONFIG_ATTR_PEER_SUPP: same as the previous per-vif =

> one, but
> ++ *	per peer instead.
> ++ * @NL80211_TID_CONFIG_ATTR_OVERRIDE: flag attribue, if no peer
> ++ *	is selected, if set indicates that the new configuration =

> overrides
> ++ *	all previous peer configurations, otherwise previous peer =

> specific
> ++ *	configurations should be left untouched. If peer is selected then
> ++ *	it will reset particular TID configuration of that peer and it =

> will
> ++ *	not accept other TID config attributes along with peer.
> ++ * @NL80211_TID_CONFIG_ATTR_TIDS: a bitmask value of TIDs (bit 0 to =

> 7)
> ++ *	Its type is u16.
> ++ * @NL80211_TID_CONFIG_ATTR_NOACK: Configure ack policy for the TID.
> ++ *	specified in %NL80211_TID_CONFIG_ATTR_TID. see %enum =

> nl80211_tid_config.
> ++ *	Its type is u8.
> ++ * @NL80211_TID_CONFIG_ATTR_RETRY_SHORT: Number of retries used =

> with data frame
> ++ *	transmission, user-space sets this configuration in
> ++ *	&NL80211_CMD_SET_TID_CONFIG. It is u8 type, min value is 1 and
> ++ *	the max value is advertised by the driver in this attribute on
> ++ *	output in wiphy capabilities.
> ++ * @NL80211_TID_CONFIG_ATTR_RETRY_LONG: Number of retries used with =

> data frame
> ++ *	transmission, user-space sets this configuration in
> ++ *	&NL80211_CMD_SET_TID_CONFIG. Its type is u8, min value is 1 and
> ++ *	the max value is advertised by the driver in this attribute on
> ++ *	output in wiphy capabilities.
> ++ * @NL80211_TID_CONFIG_ATTR_AMPDU_CTRL: Enable/Disable aggregation =

> for the TIDs
> ++ *	specified in %NL80211_TID_CONFIG_ATTR_TIDS. Its type is u8, using
> ++ *	the values from &nl80211_tid_config.
> ++ * @NL80211_TID_CONFIG_ATTR_RTSCTS_CTRL: Enable/Disable RTS_CTS for =

> the TIDs
> ++ *	specified in %NL80211_TID_CONFIG_ATTR_TIDS. It is u8 type, using
> ++ *	the values from &nl80211_tid_config.
> ++ */
> ++enum nl80211_tid_config_attr {
> ++	__NL80211_TID_CONFIG_ATTR_INVALID,
> ++	NL80211_TID_CONFIG_ATTR_PAD,
> ++	NL80211_TID_CONFIG_ATTR_VIF_SUPP,
> ++	NL80211_TID_CONFIG_ATTR_PEER_SUPP,
> ++	NL80211_TID_CONFIG_ATTR_OVERRIDE,
> ++	NL80211_TID_CONFIG_ATTR_TIDS,
> ++	NL80211_TID_CONFIG_ATTR_NOACK,
> ++	NL80211_TID_CONFIG_ATTR_RETRY_SHORT,
> ++	NL80211_TID_CONFIG_ATTR_RETRY_LONG,
> ++	NL80211_TID_CONFIG_ATTR_AMPDU_CTRL,
> ++	NL80211_TID_CONFIG_ATTR_RTSCTS_CTRL,
> ++
> ++	/* keep last */
> ++	__NL80211_TID_CONFIG_ATTR_AFTER_LAST,
> ++	NL80211_TID_CONFIG_ATTR_MAX =3D __NL80211_TID_CONFIG_ATTR_AFTER_LAST =

> - 1
> ++};
> ++
> ++/**
> +  * enum nl80211_packet_pattern_attr - packet pattern attribute
> +  * @__NL80211_PKTPAT_INVALID: invalid number for nested attribute
> +  * @NL80211_PKTPAT_PATTERN: the pattern, values where the mask has
> +@@ -5484,6 +5669,26 @@ enum nl80211_feature_flags {
>    * @NL80211_EXT_FEATURE_SAE_OFFLOAD: Device wants to do SAE =

> authentication in
>    *	station mode (SAE password is passed as part of the connect =

> command).
>    *
> @@ -73,16 +305,149 @@
>  + * @NL80211_EXT_FEATURE_AQL: The driver supports the Airtime Queue =

> Limit (AQL)
>  + *	feature, which prevents bufferbloat by using the expected =

> transmission
>  + *	time to limit the amount of data buffered in the hardware.
> ++ *
> ++ * @NL80211_EXT_FEATURE_BEACON_PROTECTION: The driver supports =

> Beacon protection
> ++ *	and can receive key configuration for BIGTK using key indexes 6 =

> and 7.
> ++ *
> ++ * @NL80211_EXT_FEATURE_CONTROL_PORT_NO_PREAUTH: The driver can =

> disable the
> ++ *	forwarding of preauth frames over the control port. They are then
> ++ *	handled as ordinary data frames.
> ++ *
> ++ * @NL80211_EXT_FEATURE_PROTECTED_TWT: Driver supports protected =

> TWT frames
> ++ *
> ++ * @NL80211_EXT_FEATURE_DEL_IBSS_STA: The driver supports removing =

> stations
> ++ *      in IBSS mode, essentially by dropping their state.
>  + *
>    * @NUM_NL80211_EXT_FEATURES: number of extended features.
>    * @MAX_NL80211_EXT_FEATURES: highest extended feature index.
>    */
> -@@ -5529,6 +5571,8 @@ enum nl80211_ext_feature_index {
> +@@ -5529,6 +5734,12 @@ enum nl80211_ext_feature_index {
>   	NL80211_EXT_FEATURE_EXT_KEY_ID,
>   	NL80211_EXT_FEATURE_STA_TX_PWR,
>   	NL80211_EXT_FEATURE_SAE_OFFLOAD,
>  +	NL80211_EXT_FEATURE_VLAN_OFFLOAD,
>  +	NL80211_EXT_FEATURE_AQL,
> ++	NL80211_EXT_FEATURE_BEACON_PROTECTION,
> ++	NL80211_EXT_FEATURE_CONTROL_PORT_NO_PREAUTH,
> ++	NL80211_EXT_FEATURE_PROTECTED_TWT,
> ++	NL80211_EXT_FEATURE_DEL_IBSS_STA,
> =

>   	/* add new features before the definition below */
>   	NUM_NL80211_EXT_FEATURES,
> +@@ -6151,12 +6362,14 @@ enum nl80211_ftm_responder_stats {
> +  * @NL80211_PREAMBLE_HT: HT preamble
> +  * @NL80211_PREAMBLE_VHT: VHT preamble
> +  * @NL80211_PREAMBLE_DMG: DMG preamble
> ++ * @NL80211_PREAMBLE_HE: HE preamble
> +  */
> + enum nl80211_preamble {
> + 	NL80211_PREAMBLE_LEGACY,
> + 	NL80211_PREAMBLE_HT,
> + 	NL80211_PREAMBLE_VHT,
> + 	NL80211_PREAMBLE_DMG,
> ++	NL80211_PREAMBLE_HE,
> + };
> +
> + /**
> +@@ -6349,6 +6562,10 @@ enum nl80211_peer_measurement_attrs {
> +  *	is valid)
> +  * @NL80211_PMSR_FTM_CAPA_ATTR_MAX_FTMS_PER_BURST: u32 attribute =

> indicating
> +  *	the maximum FTMs per burst (if not present anything is valid)
> ++ * @NL80211_PMSR_FTM_CAPA_ATTR_TRIGGER_BASED: flag attribute =

> indicating if
> ++ *	trigger based ranging measurement is supported
> ++ * @NL80211_PMSR_FTM_CAPA_ATTR_NON_TRIGGER_BASED: flag attribute =

> indicating
> ++ *	if non trigger based ranging measurement is supported
> +  *
> +  * @NUM_NL80211_PMSR_FTM_CAPA_ATTR: internal
> +  * @NL80211_PMSR_FTM_CAPA_ATTR_MAX: highest attribute number
> +@@ -6364,6 +6581,8 @@ enum nl80211_peer_measurement_ftm_capa {
> + 	NL80211_PMSR_FTM_CAPA_ATTR_BANDWIDTHS,
> + 	NL80211_PMSR_FTM_CAPA_ATTR_MAX_BURSTS_EXPONENT,
> + 	NL80211_PMSR_FTM_CAPA_ATTR_MAX_FTMS_PER_BURST,
> ++	NL80211_PMSR_FTM_CAPA_ATTR_TRIGGER_BASED,
> ++	NL80211_PMSR_FTM_CAPA_ATTR_NON_TRIGGER_BASED,
> +
> + 	/* keep last */
> + 	NUM_NL80211_PMSR_FTM_CAPA_ATTR,
> +@@ -6393,6 +6612,20 @@ enum nl80211_peer_measurement_ftm_capa {
> +  * @NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI: request LCI data (flag)
> +  * @NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC: request civic =

> location data
> +  *	(flag)
> ++ * @NL80211_PMSR_FTM_REQ_ATTR_TRIGGER_BASED: request trigger based =

> ranging
> ++ *	measurement (flag).
> ++ *	This attribute and %NL80211_PMSR_FTM_REQ_ATTR_NON_TRIGGER_BASED =

> are
> ++ *	mutually exclusive.
> ++ *      if neither %NL80211_PMSR_FTM_REQ_ATTR_TRIGGER_BASED nor
> ++ *	%NL80211_PMSR_FTM_REQ_ATTR_NON_TRIGGER_BASED is set, EDCA based
> ++ *	ranging will be used.
> ++ * @NL80211_PMSR_FTM_REQ_ATTR_NON_TRIGGER_BASED: request non =

> trigger based
> ++ *	ranging measurement (flag)
> ++ *	This attribute and %NL80211_PMSR_FTM_REQ_ATTR_TRIGGER_BASED are
> ++ *	mutually exclusive.
> ++ *      if neither %NL80211_PMSR_FTM_REQ_ATTR_TRIGGER_BASED nor
> ++ *	%NL80211_PMSR_FTM_REQ_ATTR_NON_TRIGGER_BASED is set, EDCA based
> ++ *	ranging will be used.
> +  *
> +  * @NUM_NL80211_PMSR_FTM_REQ_ATTR: internal
> +  * @NL80211_PMSR_FTM_REQ_ATTR_MAX: highest attribute number
> +@@ -6409,6 +6642,8 @@ enum nl80211_peer_measurement_ftm_req {
> + 	NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES,
> + 	NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI,
> + 	NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC,
> ++	NL80211_PMSR_FTM_REQ_ATTR_TRIGGER_BASED,
> ++	NL80211_PMSR_FTM_REQ_ATTR_NON_TRIGGER_BASED,
> +
> + 	/* keep last */
> + 	NUM_NL80211_PMSR_FTM_REQ_ATTR,
> +@@ -6548,5 +6783,51 @@ enum nl80211_obss_pd_attributes {
> + 	NL80211_HE_OBSS_PD_ATTR_MAX =3D __NL80211_HE_OBSS_PD_ATTR_LAST - 1,
> + };
> +
> ++/**
> ++ * enum nl80211_bss_color_attributes - BSS Color attributes
> ++ * @__NL80211_HE_BSS_COLOR_ATTR_INVALID: Invalid
> ++ *
> ++ * @NL80211_HE_BSS_COLOR_ATTR_COLOR: the current BSS Color.
> ++ * @NL80211_HE_BSS_COLOR_ATTR_DISABLED: is BSS coloring disabled.
> ++ * @NL80211_HE_BSS_COLOR_ATTR_PARTIAL: the AID equation to be used..
> ++ *
> ++ * @__NL80211_HE_BSS_COLOR_ATTR_LAST: Internal
> ++ * @NL80211_HE_BSS_COLOR_ATTR_MAX: highest BSS Color attribute.
> ++ */
> ++enum nl80211_bss_color_attributes {
> ++	__NL80211_HE_BSS_COLOR_ATTR_INVALID,
> ++
> ++	NL80211_HE_BSS_COLOR_ATTR_COLOR,
> ++	NL80211_HE_BSS_COLOR_ATTR_DISABLED,
> ++	NL80211_HE_BSS_COLOR_ATTR_PARTIAL,
> ++
> ++	/* keep last */
> ++	__NL80211_HE_BSS_COLOR_ATTR_LAST,
> ++	NL80211_HE_BSS_COLOR_ATTR_MAX =3D __NL80211_HE_BSS_COLOR_ATTR_LAST - =

> 1,
> ++};
> ++
> ++/**
> ++ * enum nl80211_iftype_akm_attributes - interface type AKM =

> attributes
> ++ * @__NL80211_IFTYPE_AKM_ATTR_INVALID: Invalid
> ++ *
> ++ * @NL80211_IFTYPE_AKM_ATTR_IFTYPES: nested attribute containing a =

> flag
> ++ *	attribute for each interface type that supports AKM suites =

> specified in
> ++ *	%NL80211_IFTYPE_AKM_ATTR_SUITES
> ++ * @NL80211_IFTYPE_AKM_ATTR_SUITES: an array of u32. Used to =

> indicate supported
> ++ *	AKM suites for the specified interface types.
> ++ *
> ++ * @__NL80211_IFTYPE_AKM_ATTR_LAST: Internal
> ++ * @NL80211_IFTYPE_AKM_ATTR_MAX: highest interface type AKM =

> attribute.
> ++ */
> ++enum nl80211_iftype_akm_attributes {
> ++	__NL80211_IFTYPE_AKM_ATTR_INVALID,
> ++
> ++	NL80211_IFTYPE_AKM_ATTR_IFTYPES,
> ++	NL80211_IFTYPE_AKM_ATTR_SUITES,
> ++
> ++	/* keep last */
> ++	__NL80211_IFTYPE_AKM_ATTR_LAST,
> ++	NL80211_IFTYPE_AKM_ATTR_MAX =3D __NL80211_IFTYPE_AKM_ATTR_LAST - 1,
> ++};
> +
> + #endif /* __LINUX_NL80211_H */
> --
> 2.20.1
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
