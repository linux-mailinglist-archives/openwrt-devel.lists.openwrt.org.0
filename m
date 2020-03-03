Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3C1775A7
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 13:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdYdIwbOsmD+Cx77JWGXA0OS+XdbYU4fAzAkRy7Am54=; b=M9KQZffvfKgeHZ
	pluf4YULL59EnTZlCBR/RUfUp04cgNxB9piGc7A12nmxM93EHq0fvtXABFHVgYCWA1QBSJHnAOftr
	zRW1sUOJeCRBr2XXCDEr/mOy358wyVpbVC04QDbQ/yIN333n3TqZGK+qNLKtlxmiSLY0aksJZGvvp
	kHLwHcKQrm2hxwjw7ZvMs+LhjA0gMiCjo3wvvslqb0kt9Tj0qdpYf8I164bDbabNb2+NRSZAGh0Qj
	gzNhgBEE5eGy35jiBdm+7Fys3O/dSr6tZQf2Wgxd47XGWZS3DR/c8Rmh8QrGQ9/5qSOnohcHs7EDD
	k9gctfd2QpO5NuscYYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96Lx-0008M5-Ab; Tue, 03 Mar 2020 12:08:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96Lf-0008BP-Jb
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 12:08:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0F0BD408A;
 Tue,  3 Mar 2020 13:08:30 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b8b55878;
 Tue, 3 Mar 2020 13:08:17 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 13:08:26 +0100
Message-Id: <20200303120826.10793-2-ynezz@true.cz>
In-Reply-To: <20200303120826.10793-1-ynezz@true.cz>
References: <20200303120826.10793-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_040831_791205_A2D8EA5C 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/2] linux: generic: 5.4: add missing config
 symbols
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhvc2Ugc3ltYm9scyBwb3BwZWQgdXAgd2hpbGUgYnVpbGRpbmcgaW14NiB3aXRoIGFsbCB0YXJn
ZXRzIGVuYWJsZWQuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PgotLS0KIHRhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy01LjQgfCAxMSArKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGlu
dXgvZ2VuZXJpYy9jb25maWctNS40IGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTUuNApp
bmRleCA5ZmEzOTNhOGM4N2UuLmZjM2UxNTdlOWJjYyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4
L2dlbmVyaWMvY29uZmlnLTUuNAorKysgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNS40
CkBAIC0xMzA2LDYgKzEzMDYsNyBAQCBDT05GSUdfRFFMPXkKICMgQ09ORklHX0RSTV9GQkRFVl9F
TVVMQVRJT04gaXMgbm90IHNldAogIyBDT05GSUdfRFJNX0ZCREVWX0xFQUtfUEhZU19TTUVNIGlz
IG5vdCBzZXQKICMgQ09ORklHX0RSTV9GU0xfRENVIGlzIG5vdCBzZXQKKyMgQ09ORklHX0RSTV9H
TTEyVTMyMCBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1fR01BNTAwIGlzIG5vdCBzZXQKICMgQ09O
RklHX0RSTV9IRExDRCBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1fSElTSV9ISUJNQyBpcyBub3Qg
c2V0CkBAIC0xMzE2LDggKzEzMTcsMTAgQEAgQ09ORklHX0RRTD15CiAjIENPTkZJR19EUk1fSTJD
X05YUF9UREE5OThYIGlzIG5vdCBzZXQKICMgQ09ORklHX0RSTV9JMkNfU0lMMTY0IGlzIG5vdCBz
ZXQKICMgQ09ORklHX0RSTV9JOTE1IGlzIG5vdCBzZXQKKyMgQ09ORklHX0RSTV9LT01FREEgaXMg
bm90IHNldAogIyBDT05GSUdfRFJNX0xFR0FDWSBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1fTElC
X1JBTkRPTSBpcyBub3Qgc2V0CisjIENPTkZJR19EUk1fTElNQSBpcyBub3Qgc2V0CiAjIENPTkZJ
R19EUk1fTE9BRF9FRElEX0ZJUk1XQVJFIGlzIG5vdCBzZXQKICMgQ09ORklHX0RSTV9MVkRTX0VO
Q09ERVIgaXMgbm90IHNldAogIyBDT05GSUdfRFJNX01BTElfRElTUExBWSBpcyBub3Qgc2V0CkBA
IC0xMzMyLDggKzEzMzUsMTAgQEAgQ09ORklHX0RRTD15CiAjIENPTkZJR19EUk1fUEFORUxfSUxJ
VEVLX0lMSTk4ODFDIGlzIG5vdCBzZXQKICMgQ09ORklHX0RSTV9QQU5FTF9JTk5PTFVYX1AwNzla
Q0EgaXMgbm90IHNldAogIyBDT05GSUdfRFJNX1BBTkVMX0pESV9MVDA3ME1FMDUwMDAgaXMgbm90
IHNldAorIyBDT05GSUdfRFJNX1BBTkVMX0xHX0xCMDM1UTAyIGlzIG5vdCBzZXQKICMgQ09ORklH
X0RSTV9QQU5FTF9MR19MRzQ1NzMgaXMgbm90IHNldAogIyBDT05GSUdfRFJNX1BBTkVMX0xWRFMg
aXMgbm90IHNldAorIyBDT05GSUdfRFJNX1BBTkVMX05FQ19OTDgwNDhITDExIGlzIG5vdCBzZXQK
ICMgQ09ORklHX0RSTV9QQU5FTF9PUklTRVRFQ0hfT1RNODAwOUEgaXMgbm90IHNldAogIyBDT05G
SUdfRFJNX1BBTkVMX1BBTkFTT05JQ19WVlgxMEYwMzROMDAgaXMgbm90IHNldAogIyBDT05GSUdf
RFJNX1BBTkVMX1JBU1BCRVJSWVBJX1RPVUNIU0NSRUVOIGlzIG5vdCBzZXQKQEAgLTEzNDQsOCAr
MTM0OSwxMyBAQCBDT05GSUdfRFFMPXkKICMgQ09ORklHX0RSTV9QQU5FTF9TQU1TVU5HX1M2RThB
QTAgaXMgbm90IHNldAogIyBDT05GSUdfRFJNX1BBTkVMX1NFSUtPXzQzV1ZGMUcgaXMgbm90IHNl
dAogIyBDT05GSUdfRFJNX1BBTkVMX1NIQVJQX0xRMTAxUjFTWDAxIGlzIG5vdCBzZXQKKyMgQ09O
RklHX0RSTV9QQU5FTF9TSEFSUF9MUzAzN1Y3RFcwMSBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1f
UEFORUxfU0hBUlBfTFMwNDNUMUxFMDEgaXMgbm90IHNldAogIyBDT05GSUdfRFJNX1BBTkVMX1NJ
VFJPTklYX1NUNzc4OVYgaXMgbm90IHNldAorIyBDT05GSUdfRFJNX1BBTkVMX1RQT19URDA0M01U
RUExIGlzIG5vdCBzZXQKKyMgQ09ORklHX0RSTV9QQU5GUk9TVCBpcyBub3Qgc2V0CisjIENPTkZJ
R19EUk1fVE9TSElCQV9UQzM1ODc2NCBpcyBub3Qgc2V0CisjIENPTkZJR19EUk1fVElfU042NURT
STg2IGlzIG5vdCBzZXQKICMgQ09ORklHX0RSTV9QQVJBREVfUFM4NjIyIGlzIG5vdCBzZXQKICMg
Q09ORklHX0RSTV9QTDExMSBpcyBub3Qgc2V0CiAjIENPTkZJR19EUk1fUVhMIGlzIG5vdCBzZXQK
QEAgLTUwNDMsNiArNTA1Myw3IEBAIENPTkZJR19TTkRfUFJPQ19GUz15CiAjIENPTkZJR19TTkRf
U09DX0dUTTYwMSBpcyBub3Qgc2V0CiAjIENPTkZJR19TTkRfU09DX0lDUzQzNDMyIGlzIG5vdCBz
ZXQKICMgQ09ORklHX1NORF9TT0NfSU1HIGlzIG5vdCBzZXQKKyMgQ09ORklHX1NORF9TT0NfSU1Y
X0FVRE1JWCBpcyBub3Qgc2V0CiAjIENPTkZJR19TTkRfU09DX0lNWF9BVURNVVggaXMgbm90IHNl
dAogIyBDT05GSUdfU05EX1NPQ19JTVhfRVM4MzI4IGlzIG5vdCBzZXQKICMgQ09ORklHX1NORF9T
T0NfSU1YX1NQRElGIGlzIG5vdCBzZXQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
