Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C030E4E877
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 15:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EtLusPVCT4sm2jiWgM8hfETI2Z9HD4ADeYl57ank3CI=; b=TrBOUODXR9uTFEcrkPbxKHuO94
	sgSj5OVD3Xj8AvjiPVlrano+/inovLP159FHGiI5WyQ2vZtndODs93/j2eGElq/cJRqBhwv3T13mS
	sVG/4MSJd6ZL2SlAxBrf1rtcFqe8rce2y0fH3w7kWo85A6LmASXeMv/pl/9dOxdZ9JU8KDJSs7zz9
	Sq8aQ+aFhuM+YVX8ck39QuUN5O3LLbBN+/tESLWvGC+2v+fnN7VCDGPEF4P1YFiuMkYERNhEJAU8i
	hNVCf8qzgSXn0Dbxp55HzS9jLIwDOPE31UD22YyY3XaCabzWoTfuzVHDw0PYu1bFwlnZRPDcS6hfj
	A2FdPCNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJEm-0008TQ-Vs; Fri, 21 Jun 2019 13:05:53 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri, 21 Jun 2019 10:05:23 -0300
MIME-Version: 1.0
Message-ID: <mailman.3988.1561122346.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Eneas U de Queiroz via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Eneas U de Queiroz <cote2004-github@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] nghttp2: deduplicate files in staging_dir
Content-Type: multipart/mixed; boundary="===============3527234305271169215=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3527234305271169215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3527234305271169215==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic301-2.consmr.mail.bf2.yahoo.com ([74.6.129.41])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1heJEd-0008St-WF
	for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 13:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1561122341; bh=6B/0eyNbx+IITc5mIVMVbM/3qcoDqE6SwdPvxrK5RxU=; h=From:To:Cc:Subject:Date:From:Subject; b=Xqcza/cDnF7M3Vsx8cucfnpI50QnPJ6osocjO+Ol/zaHZmwcRN0bYDRWjtdq5bgcBKNiISmE9QYyp4sXs9tTylodWqMtHw/XENBHoZ9/RHVRESsC2Y+vWAdDD3Tj2NbJ69BbnqZM75t9seQAZ9X2oATqmOzctOBGkb221Zj7SRt/uSVJM0uB6/QXGxZUP3HR9U2XJgHjldwqJM7GmccB+zahsQ2FTLb9bVRHg5jHklNiZsgUWdNZV2GojwdCC6uyJqgVNT0L0q49RUTZb8smIvFe2hAUysIJQSAR90RZ0Ur33Y5dnKmOxf/gmxUeR98cpro5Hw4km0HrbDQ+2e5k/A==
X-YMail-OSG: AnvYkPcVM1mSmlcfaHpmHXEEkktuZOPexT3WgjVIQAOEfTSURI1Kf0OU7XcHXZa
 1Jkj8NM79I72K7WLqT_jFhvLuKusXn2ZxJLAoIumtEJThqFCaMzeK.UMTkY8z9yNeM9mYr44HCHj
 3knk92aC9kYfS.8Y08WHnDOTp3lfKrsrEyLpIzp_Uzci1uoZ7jqM.tKcakALLzCOSaC3ZCW_XWzk
 IwQXaSRkgY1rkm.z6CARflqpHs7uthn1237ucZDi6kb1rebiOs9cXJsZr9WYptc07Xo8K6nA2kH.
 pB7RHAM.aRoYbuo_kt9fWk_obNvpk_CALdrrqfdRgXpT2JLO2opyoOHjYeiiyLkYE6DHK1hqdnYE
 sJ3qfDz.V4DIvMxM5McG64j4Pqjci5.a0wB5p.fECUhErIcEQ_Kf7_JElp1w.NmyvFPbAELS0Cdf
 tnQi6TS6NWreqNxJ3MyyGJK43rQLsx9FeLQSyZneuqWt_kBibsPoulj8Simt1uEoQ7AQIG8NA4Fa
 fCgYTb0VSRT7li8VC2eeqY_n5E6WDSIPVNdboiNS.YiVWmtKAM4821BoBVIDgOj.JhjBHcLo_M6F
 eOgl2gBsjRd8GqL3NZM3OfAKYF7tpntk.XJbNdqa0vscZ.AoQSla38dlKaHXvnEdUBlNyoeErdpW
 oa6muDQOY2jYZ4QUuA5ib_Ir55qPAnhlKch6zQ1UWdGUn.bN8YVk.DYMkbrlsqCUJS3m4SVLbog5
 Pd1TgeieCZ32OSEqeyQiELCEglhru1Mmk5V0INoZPKYlLoWCH7xskFfcOnwalxHsaLB9o3jUx751
 IOZH1HfwMVF5JoGPLhH0v0.NtZf._ptvBatNKOEoGcnazLTstgrYABb24lvHXU4IjMXl1fCs.Rry
 fuXW9kDnuI.1ZgETLP_y1oE1TyyiYKonK7WNWHCrArlpnTaKSRP_NY1BG10NTnuf45EZtUc9sBl6
 q.fVjS6jYKOfThnggdFXv7LhYKhkQdnYC0.osFkslx58v44hSo0HuiVYK3CU2VN6MuD11G1_3sOD
 VKPm2nMjJIqoYu5ZjHdItyEMWttUt3yuBkVUy8TzTUcXC0oOXsCSQAFrK8dCi8lS3X2fdxkKenzJ
 pxQU.C.S69yaA86DixtbVBz_u1xbIQaph9xo1qryZpcgXEzAR8Ee.1_vwmi5TygiT5HtKJ0nxG4Y
 mmir2t9Iq7TFjiHja921o8tF9n8qnUaHgeKdhDNVV50HgJ8my
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Fri, 21 Jun 2019 13:05:41 +0000
Received: from 18.175.75.177.infopasa.com.br (EHLO gateway.troianet.com.br) ([177.75.175.18])
          by smtp421.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6edfcaab30b0ceb3c5c1c26e959e4a3a;
          Fri, 21 Jun 2019 13:05:40 +0000 (UTC)
From: Eneas U de Queiroz <cote2004-github@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
Subject: [PATCH] nghttp2: deduplicate files in staging_dir
Date: Fri, 21 Jun 2019 10:05:23 -0300
Message-Id: <20190621130523.30722-1-cote2004-github@yahoo.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_060544_102227_953BE66A 
X-CRM114-Status: UNSURE (   1.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [74.6.129.41 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (cote2004-github[at]yahoo.com)
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

'38b22b1e: deduplicate files in libnghttp2' missed duplicates in
staging_dir by Build/InstallDev.

Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>

diff --git a/package/libs/nghttp2/Makefile b/package/libs/nghttp2/Makefile
index b96ebd8acb..2f0b4bcabc 100644
--- a/package/libs/nghttp2/Makefile
+++ b/package/libs/nghttp2/Makefile
@@ -35,7 +35,7 @@ define Build/InstallDev
 	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/nghttp2/*.h $(1)/usr/include/nghttp2/
 	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
 	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
-	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/libnghttp2.so* $(1)/usr/lib/
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnghttp2.so* $(1)/usr/lib/
 endef
 
 define Package/libnghttp2/install


--===============3527234305271169215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3527234305271169215==--
