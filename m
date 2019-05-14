Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2158F1C506
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 10:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W57fFMy7/WPs7r61wCBQC5qvy4sqlYUAI0AR3eNfjWY=; b=d1XVRCduIjMi3SUvjdtj6RhYy
	UpGp0GLaQ3shng8hbnPZYevUsFKcAEXkMntdvqc5QeTkdhIr9AZo4cGvZLk6YP+ETUjxycl3k1B+N
	VnnO6ytHOBTrxMRhWzXPcHX3qinFQlJHdri9SWS+ftrAaxLaF6Lfk1f0+mDktztVoZ2yMGIWT5k8d
	NlULcZGiRpQEPqcsyNCArwlqMmWpSDJepAnRZTTRLk97juJvs+CRNloOe8a2eoesFI3y6UnRBp7Tg
	XjUpg0iPmvQmwCZ4+atjiJ9D1h9+1CA9w8TsRX2SWm6l1f1KCAxNVWhHYZWvZdqJRJfPe7pCeHpaf
	plveR2sbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSsa-0001P3-AZ; Tue, 14 May 2019 08:33:44 +0000
Received: from narfation.org ([79.140.41.39] helo=v3-1039.vlinux.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSsL-0001ER-BZ
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 08:33:33 +0000
Received: from bentobox.localnet (unknown
 [IPv6:2001:16b8:5514:82e2:17ed:4618:2193:6195])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 8C5141100D3;
 Tue, 14 May 2019 10:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1557822806; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=va0TEP+R1UFgzjMOxLH3Gke9Y4tUI0Y/0bYjOQQRWY0=;
 b=pMN51xWjG9yM/xyOzO9bCzGjil1wE+eFNsUkM1NFQT5U6AKR4rklKNETFY2gaN5v6Rweq9
 BjcUt2JdCu+6l2omWB7AnqqNwPPfwJy0oj2TE7V1TextvFqtvk8IEm9xWr40cY7Hc7BWgu
 71COnF3XPC5dgGnyAFTKK+JURtXvfUs=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 10:33:21 +0200
Message-ID: <8244904.XkRuOMmhsn@bentobox>
In-Reply-To: <CAPGJ1o-fdnMVqoSL-8jDQUQJqBzzFDWttTPomFvm30R=iM-fkQ@mail.gmail.com>
References: <CAPGJ1o-fdnMVqoSL-8jDQUQJqBzzFDWttTPomFvm30R=iM-fkQ@mail.gmail.com>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1557822806;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=va0TEP+R1UFgzjMOxLH3Gke9Y4tUI0Y/0bYjOQQRWY0=;
 b=UK6n2bzHVRFcqAfVP5tjrh5Kxug+93XRARC09/wXgSEb5g8Ow+p+9Pmh3tbJjOUL69RzcJ
 2eXa18QKOHmZnUpAcbGYGMWvfNLndUuke2TkNSWPBAeUBU6pUyHrpwGi5RT8GcdAOUjH3t
 F2fM4LKo2UcF0gP89TDrM1v9h36R2lg=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1557822806; a=rsa-sha256; cv=none;
 b=iknR6ezOd1CnKo5MD4CP50lAD+FuxiSi8wGYeejt2E2YvCGqEVpL7gBBHUUobaUfArUkde
 d8XCbrNrrFvwn21mMlB1XMrnhyfAHYf3hLsd+iBH0LZ8igjwVO1dguz5Vbo6KGTxFTuCvj
 Wt6atB2QhJCYYb4bTWZvdbi304C1EVo=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_013329_944621_1688ED25 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.140.41.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] ath10k TPC reg. domain incorrect?
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Ben Greear <greearb@candelatech.com>, Marius Genheimer <mail@f0wl.cc>,
 Sam Samy <to.swami1@gmail.com>, Kalle Valo <kvalo@qca.qualcomm.com>
Content-Type: multipart/mixed; boundary="===============0422423749569825518=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0422423749569825518==
Content-Type: multipart/signed; boundary="nextPart2310341.anzTrB8YM6"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2310341.anzTrB8YM6
Content-Type: multipart/mixed; boundary="nextPart6493384.skgk1XeMkp"
Content-Transfer-Encoding: 7Bit

This is a multi-part message in MIME format.

--nextPart6493384.skgk1XeMkp
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 13 May 2019 22:58:00 CEST Sam Samy wrote:
>  I installed master branch openwrt onto Asus MAP-AC2200 AP. It has tri
> band. Its based on IPQ4019 DK04 QCA reference platform. 2 radios
> (2Ghz/5Ghz) on AHB bus and one 5GHZ on PCIe bus. Its generally working
> fine except one problem in 5Ghz. On both the 5Ghz radios the RSSI is
> pretty low on any 5Ghz channel I put it in.  In one feet range I see -60dB
> RSSI, where as the stock firmware that came with the AP gives an RSSI
> of -36dB at one foot distance.The downstream transmit rates are MCS8/9
> for most part. The 2Ghz is working fine.

It could be the boarddata which contains more than the targetpower and CTLs 
(and thus not necessarily visible in tpc_stats). As first check, test whether 
your board-2.bin has the md5sum 34c1e73e609a27eb9848fdc89cbc2be7 for 
/lib/firmware/ath10k/QCA4019/hw1.0/board-2.bin. Also check that the correct
BDF (with the variant string is loaded). But this should only affect 
the QCA4019 5GHz PHY because the QCA9886 boarddata is generated here using the 
pre-cal data from art (unsure whether this is valid or not for this board and 
bootup sequence).

You can just check with the ath10k-bdencoder [0] from qca-swiss-army-knife 
whether the board files from board-2.bin are the ones which also your stock 
firmware is loading.

The next big problem are filters in the rx/tx chains [1]. The ieee80211-freq-
limit in the DTS file should assist you and not allow you to chose the wrong 
channel/frequency for a specific PHY. But maybe the author accidentally 
switched the settings in the board and actually wanted the lower 5GHz channels 
on the SoC 5GHz PHY and the the upper 5GHz channels on the PCIe card? This 
would be at least worth a try.

> What is the reg. domains 0x20 and 0x58 value points to?

It is 20 (0x14) and not 0x20. Same for 58 (0x3a)

Btw. the regd numbers from QCA can be checked in regd_common.h [2]. The 
mapping in regDomainPairs is not necessarily correct because someone has to 
take them from the newest proprietary driver and use them to update the ath*k 
stuff.

>   Looks like ./sys/kernel/debug/ieee80211/phy2/ath10k/cal_data is junk
> for both the 5Ghz radios even though the
> pre-cal-pci-0000:01:00.0.bin/pre-cal-ahb-a800000.wifi.bin is correct.

Yes, the implemented method for reading the data is not correct for the
wave 2 cards (and maybe also other). You can try the attached hack. At 
least this worked in 2017 when I've poked around in the stuff with 
Christian Lamparter.

Kind regards,
	Sven

[0] https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/ath10k/ath10k-bdencoder
[1] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=41a86debe3c0a01e075e749d0bb1c6d631e35c32
[2] https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/tree/drivers/net/wireless/ath/regd_common.h?id=5fad78689a9229d08ea11af53e48de3c2a845ea3#n29
--nextPart6493384.skgk1XeMkp
Content-Disposition: attachment; filename="999-readback-caldata.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="999-readback-caldata.patch"

diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
index 43e3443..0687a3f 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -509,6 +509,38 @@ static int ath10k_push_board_ext_data(struct ath10k *ar, const void *data,
 	return 0;
 }
 
+static int ath10k_debug_cal_data_fetch(struct ath10k *ar)
+{
+	u32 board_data_size = ar->hw_params.fw.board_size;
+	u32 address;
+	int ret;
+	printk("%s:%u\n", __func__, __LINE__);
+
+	ret = ath10k_bmi_read32(ar, hi_board_data, &address);
+	if (ret) {
+		ath10k_err(ar, "could not read board data addr (%d)\n", ret);
+		goto exit;
+	}
+
+	ret = ath10k_bmi_read_memory(ar, address, ar->debug.cal_data,
+				      min_t(u32, board_data_size,
+					    ar->hw_params.cal_data_len));
+	if (ret) {
+		ath10k_warn(ar, "failed to read calibration data: %d\n", ret);
+		return ret;
+	}
+
+	ret = ath10k_bmi_write32(ar, hi_board_data_initialized, 1);
+	if (ret) {
+		ath10k_err(ar, "could not write board data bit (%d)\n", ret);
+		goto exit;
+	}
+	printk("%s:%u\n", __func__, __LINE__);
+
+exit:
+	return ret;
+}
+
 static int ath10k_download_board_data(struct ath10k *ar, const void *data,
 				      size_t data_len)
 {
@@ -704,7 +736,6 @@ static int ath10k_core_get_board_id_from_otp(struct ath10k *ar)
 
 	return 0;
 }
-
 static int ath10k_download_and_run_otp(struct ath10k *ar)
 {
 	u32 result, address = ar->hw_params.patch_load_addr;
@@ -746,6 +777,8 @@ static int ath10k_download_and_run_otp(struct ath10k *ar)
 		return ret;
 	}
 
+	ath10k_debug_cal_data_fetch(ar);
+
 	ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot otp execute result %d\n", result);
 
 	if (!(skip_otp || test_bit(ATH10K_FW_FEATURE_IGNORE_OTP_RESULT,
diff --git a/drivers/net/wireless/ath/ath10k/debug.c b/drivers/net/wireless/ath/ath10k/debug.c
index fa72ef5..451bd59 100644
--- a/drivers/net/wireless/ath/ath10k/debug.c
+++ b/drivers/net/wireless/ath/ath10k/debug.c
@@ -1437,47 +1437,12 @@ static const struct file_operations fops_fw_dbglog = {
 	.llseek = default_llseek,
 };
 
-static int ath10k_debug_cal_data_fetch(struct ath10k *ar)
-{
-	u32 hi_addr;
-	__le32 addr;
-	int ret;
-
-	lockdep_assert_held(&ar->conf_mutex);
-
-	if (WARN_ON(ar->hw_params.cal_data_len > ATH10K_DEBUG_CAL_DATA_LEN))
-		return -EINVAL;
-
-	hi_addr = host_interest_item_address(HI_ITEM(hi_board_data));
-
-	ret = ath10k_hif_diag_read(ar, hi_addr, &addr, sizeof(addr));
-	if (ret) {
-		ath10k_warn(ar, "failed to read hi_board_data address: %d\n",
-			    ret);
-		return ret;
-	}
-
-	ret = ath10k_hif_diag_read(ar, le32_to_cpu(addr), ar->debug.cal_data,
-				   ar->hw_params.cal_data_len);
-	if (ret) {
-		ath10k_warn(ar, "failed to read calibration data: %d\n", ret);
-		return ret;
-	}
-
-	return 0;
-}
-
 static int ath10k_debug_cal_data_open(struct inode *inode, struct file *file)
 {
 	struct ath10k *ar = inode->i_private;
 
 	mutex_lock(&ar->conf_mutex);
 
-	if (ar->state == ATH10K_STATE_ON ||
-	    ar->state == ATH10K_STATE_UTF) {
-		ath10k_debug_cal_data_fetch(ar);
-	}
-
 	file->private_data = ar;
 	mutex_unlock(&ar->conf_mutex);
 
@@ -1910,8 +1875,6 @@ void ath10k_debug_stop(struct ath10k *ar)
 {
 	lockdep_assert_held(&ar->conf_mutex);
 
-	ath10k_debug_cal_data_fetch(ar);
-
 	/* Must not use _sync to avoid deadlock, we do that in
 	 * ath10k_debug_destroy(). The check for htt_stats_mask is to avoid
 	 * warning from del_timer(). */

--nextPart6493384.skgk1XeMkp
Content-Disposition: attachment; filename="999-show-variant.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="999-show-variant.patch"

--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -1223,10 +1223,13 @@ static int ath10k_core_fetch_board_data_
 
 	/* attempt to find boardname in the IE list */
 	ret = ath10k_core_search_bd(ar, boardname, data, len);
+	printk("Trying boardname %s: %d\n", boardname, ret);
 
 	/* if we didn't find it and have a fallback name, try that */
-	if (ret == -ENOENT && fallback_boardname)
+	if (ret == -ENOENT && fallback_boardname) {
 		ret = ath10k_core_search_bd(ar, fallback_boardname, data, len);
+		printk("Falling back to boardname %s: %d\n", fallback_boardname, ret);
+	}
 
 	if (ret == -ENOENT) {
 		ath10k_err(ar,

--nextPart6493384.skgk1XeMkp--

--nextPart2310341.anzTrB8YM6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzafVEACgkQXYcKB8Em
e0YwNw/9FxJJ69uL7Gn8YO9DojSS/gxPJ07kiPb5OIsnxb8vyFjNQkRo0BP6S9+Q
0T/Uu70U8hEpoxkZ4St2Ja11O31seIGpvoJsFQbQORey8+HNXMB7TaBH2FvZiQZH
WxNjVYkC2b04kidPQn+0Cf4ZAGIL2U+MOTOq5Q9B1fo76SZ6kWpsBEsGq28wyy1P
td9ucQecj/kS4Y+K4z+EaLRLscGkWvt4K4LMtJ1b9Z+xe0GciW1t6iLo1+feXS7B
9ryNlhJ9zQuGCyvJyzrjfcEnOA/jLmt8ECXzqirewyDFdh1YOrrNBiDM/xuz+YoG
0MBZeECEkUpHfyMlvpCtFauGrKc3BcMbs0IE3eVjqcF1I6VCiqreFUkEG990uHOf
YNLG5+HfsGabc8+VhwZNQWPUmF/BKCLAiabAFcwUNfo6S2GSAJ4VQ6rJD6I/Kurk
jjAp1EH9EPrsMeiPpqxwxyJI2DG+U+7uLckZKvIgqykz2ovVFfyYPvSo4XifhUy1
iE+27QV/+/6OPYs+SY6dxsKjGv9HHoMyJqFQlQ1e5NhY9G1ilgojyMkiugy+BcYe
sx1QYjtpF2jdBFJqhVAA4KhPxbMhRiSx3nesJ9HfGL2A8RqD/2hbdDWei06WXgX7
kmu7ycaL0NngevSSzqOBMJnV7+T2sQfGY5qGsIjkK6IIhhucwJ0=
=dYCb
-----END PGP SIGNATURE-----

--nextPart2310341.anzTrB8YM6--





--===============0422423749569825518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0422423749569825518==--




