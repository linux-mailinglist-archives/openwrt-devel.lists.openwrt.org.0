Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FB347ABD
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 09:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EhP/zzFK/cm9b/buyBwT6HwvF5Qcpuaut+9Fa7qjuI=; b=aMD6d73sIcLVrD
	rjk8xsKC/7qCvOqeVlTE4H4aXiNdxe41fCE3dnbrvfGv27oEPl1YM4g4whDpbxJ2YDZRdcQuU+/dy
	pcFbScon8zOR5mfCrNf43SLxr2rV5Sg3Q+UnL3XaB11VC462E9w8quuQP/qsR3tfZNZQu1N4GzxIV
	SqZUImRCNtOHzl1/wAV+51zoaKCQ5csPuKfaOPsAx99lI13RPE3fF56fwwHyB5RGCt3I0IciZpSBM
	xMIV7dYWUFLXItFjQO/2KN9FApNrgLxVqSNU5YsqzkcAvZ/jUBmLa+8GlqDVBLAfFTrMfQFAWu749
	3f1axNeZkPdYuXuBTiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcm0r-0007pp-MH; Mon, 17 Jun 2019 07:25:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcm0V-0007ox-OQ
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 07:24:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CCD054E88;
 Mon, 17 Jun 2019 09:24:41 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2536c5b7;
 Mon, 17 Jun 2019 09:24:39 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 09:24:29 +0200
Message-Id: <1560756269-30183-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560756269-30183-1-git-send-email-ynezz@true.cz>
References: <1560756269-30183-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_002448_107209_BB2DCF29 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/2] armvirt: refresh 4.19 kernel config
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

UmVmcmVzaCBrZXJuZWwgY29uZmlncyB3aXRoIDQuMTkgYml0cywgd2hpbGUgYXQgaXQsIGFkZCBj
b21tb24gc3ltYm9scwppbnRvIHRoZSB0YXJnZXQgY29uZmlnLgoKU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgvYXJtdmlydC8zMi9j
b25maWctNC4xOSB8ICA0MCArKy0tLS0tLS0tLQogdGFyZ2V0L2xpbnV4L2FybXZpcnQvNjQvY29u
ZmlnLTQuMTkgfCAxMzkgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiB0YXJn
ZXQvbGludXgvYXJtdmlydC9jb25maWctNC4xOSAgICB8ICA0MyArKysrKysrKysrLQogMyBmaWxl
cyBjaGFuZ2VkLCAxNDIgaW5zZXJ0aW9ucygrKSwgODAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvdGFyZ2V0L2xpbnV4L2FybXZpcnQvMzIvY29uZmlnLTQuMTkgYi90YXJnZXQvbGludXgvYXJt
dmlydC8zMi9jb25maWctNC4xOQppbmRleCBhMzE0ODg3NDljYzUuLjczNTgzOWNjNDA4NSAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2FybXZpcnQvMzIvY29uZmlnLTQuMTkKKysrIGIvdGFyZ2V0
L2xpbnV4L2FybXZpcnQvMzIvY29uZmlnLTQuMTkKQEAgLTEsMjIgKzEsMTQgQEAKIENPTkZJR19B
TElHTk1FTlRfVFJBUD15CiAjIENPTkZJR19BUkNIX0FYWElBIGlzIG5vdCBzZXQKLUNPTkZJR19B
UkNIX0hBU19ERUJVR19WSVJUVUFMPXkKLUNPTkZJR19BUkNIX0hBU19TRVRfTUVNT1JZPXkKLUNP
TkZJR19BUkNIX0hBU19TVFJJQ1RfS0VSTkVMX1JXWD15Ci1DT05GSUdfQVJDSF9IQVNfU1RSSUNU
X01PRFVMRV9SV1g9eQorQ09ORklHX0FSQ0hfSEFTX1BIWVNfVE9fRE1BPXkKIENPTkZJR19BUkNI
X0hBVkVfQ1VTVE9NX0dQSU9fSD15CiBDT05GSUdfQVJDSF9NSUdIVF9IQVZFX1BDX1BBUlBPUlQ9
eQogQ09ORklHX0FSQ0hfTVVMVElQTEFURk9STT15Ci0jIENPTkZJR19BUkNIX01VTFRJX0NQVV9B
VVRPIGlzIG5vdCBzZXQKIENPTkZJR19BUkNIX01VTFRJX1Y2X1Y3PXkKIENPTkZJR19BUkNIX01V
TFRJX1Y3PXkKIENPTkZJR19BUkNIX05SX0dQSU89MAogQ09ORklHX0FSQ0hfT1BUSU9OQUxfS0VS
TkVMX1JXWD15CiBDT05GSUdfQVJDSF9PUFRJT05BTF9LRVJORUxfUldYX0RFRkFVTFQ9eQotQ09O
RklHX0FSQ0hfUEhZU19BRERSX1RfNjRCSVQ9eQotIyBDT05GSUdfQVJDSF9TRUxFQ1RfTUVNT1JZ
X01PREVMIGlzIG5vdCBzZXQKLSMgQ09ORklHX0FSQ0hfU1BBUlNFTUVNX0RFRkFVTFQgaXMgbm90
IHNldAotQ09ORklHX0FSQ0hfU1VQUE9SVFNfVVBST0JFUz15CiBDT05GSUdfQVJDSF9VU0VfQlVJ
TFRJTl9CU1dBUD15CiBDT05GSUdfQVJDSF9WSVJUPXkKIENPTkZJR19BUkNIX1dBTlRfR0VORVJB
TF9IVUdFVExCPXkKQEAgLTI0LDYgKzE2LDcgQEAgQ09ORklHX0FSQ0hfV0FOVF9JUENfUEFSU0Vf
VkVSU0lPTj15CiBDT05GSUdfQVJNPXkKIENPTkZJR19BUk1fQ1BVX1NVU1BFTkQ9eQogQ09ORklH
X0FSTV9HSUNfVjNfSVRTPXkKK0NPTkZJR19BUk1fR0lDX1YzX0lUU19QQ0k9eQogQ09ORklHX0FS
TV9IQVNfU0dfQ0hBSU49eQogQ09ORklHX0FSTV9IRUFWWV9NQj15CiBDT05GSUdfQVJNX0wxX0NB
Q0hFX1NISUZUPTYKQEAgLTM2LDggKzI5LDYgQEAgQ09ORklHX0FSTV9USFVNQj15CiAjIENPTkZJ
R19BUk1fVEhVTUJFRSBpcyBub3Qgc2V0CiBDT05GSUdfQVJNX1ZJUlRfRVhUPXkKIENPTkZJR19B
VVRPX1pSRUxBRERSPXkKLUNPTkZJR19CTEtfTVFfVklSVElPPXkKLUNPTkZJR19CTEtfU0NTSV9S
RVFVRVNUPXkKIENPTkZJR19DQUNIRV9MMlgwPXkKIENPTkZJR19DUFVfMzJ2Nks9eQogQ09ORklH
X0NQVV8zMnY3PXkKQEAgLTU1LDY0ICs0Niw0MyBAQCBDT05GSUdfQ1BVX1NQRUNUUkU9eQogQ09O
RklHX0NQVV9USFVNQl9DQVBBQkxFPXkKIENPTkZJR19DUFVfVExCX1Y3PXkKIENPTkZJR19DUFVf
Vjc9eQotQ09ORklHX0RFQlVHX0JVR1ZFUkJPU0U9eQogQ09ORklHX0RFQlVHX0xMX0lOQ0xVREU9
Im1hY2gvZGVidWctbWFjcm8uUyIKLSMgQ09ORklHX0RFQlVHX1VBUlRfODI1MCBpcyBub3Qgc2V0
CiAjIENPTkZJR19ERUJVR19VU0VSIGlzIG5vdCBzZXQKIENPTkZJR19FREFDX0FUT01JQ19TQ1JV
Qj15Ci1DT05GSUdfR0VORVJJQ19BUkNIX1RPUE9MT0dZPXkKLUNPTkZJR19HRU5FUklDX0NQVV9B
VVRPUFJPQkU9eQotQ09ORklHX0dFTkVSSUNfSVJRX0VGRkVDVElWRV9BRkZfTUFTSz15Ci0jIENP
TkZJR19HUk9fQ0VMTFMgaXMgbm90IHNldAotQ09ORklHX0hBUkRFTl9CUkFOQ0hfUFJFRElDVE9S
PXkKLUNPTkZJR19IQVZFX0FSQ0hfVFJBTlNQQVJFTlRfSFVHRVBBR0U9eQogQ09ORklHX0hBVkVf
QVJNX0FSQ0hfVElNRVI9eQogQ09ORklHX0hBVkVfRFlOQU1JQ19GVFJBQ0VfV0lUSF9SRUdTPXkK
LUNPTkZJR19IQVZFX0VCUEZfSklUPXkKLUNPTkZJR19IQVZFX0dFTkVSSUNfR1VQPXkKIENPTkZJ
R19IQVZFX0lERT15Ci1DT05GSUdfSEFWRV9NT0RfQVJDSF9TUEVDSUZJQz15CitDT05GSUdfSEFW
RV9MRF9ERUFEX0NPREVfREFUQV9FTElNSU5BVElPTj15CiBDT05GSUdfSEFWRV9PUFJPRklMRT15
CiBDT05GSUdfSEFWRV9PUFRQUk9CRVM9eQogQ09ORklHX0hBVkVfUFJPQ19DUFU9eQotQ09ORklH
X0hBVkVfUkNVX1RBQkxFX0ZSRUU9eQogQ09ORklHX0hBVkVfU01QPXkKICMgQ09ORklHX0hVR0VU
TEJGUyBpcyBub3Qgc2V0CiBDT05GSUdfSFpfRklYRUQ9MAogQ09ORklHX0haX1BFUklPRElDPXkK
LSMgQ09ORklHX01ESU9fQlVTIGlzIG5vdCBzZXQKIENPTkZJR19NSUdIVF9IQVZFX0NBQ0hFX0wy
WDA9eQogQ09ORklHX01JR0hUX0hBVkVfUENJPXkKLUNPTkZJR19NSUdSQVRJT049eQogQ09ORklH
X01PRFVMRVNfVVNFX0VMRl9SRUw9eQotQ09ORklHX01VTFRJX0lSUV9IQU5ETEVSPXkKIENPTkZJ
R19ORU9OPXkKK0NPTkZJR19OUl9DUFVTPTQKIENPTkZJR19PTERfU0lHQUNUSU9OPXkKIENPTkZJ
R19PVVRFUl9DQUNIRT15CiBDT05GSUdfT1VURVJfQ0FDSEVfU1lOQz15CiBDT05GSUdfUEFHRV9P
RkZTRVQ9MHhDMDAwMDAwMAorIyBDT05GSUdfUENJX1YzX1NFTUkgaXMgbm90IHNldAogQ09ORklH
X1BFUkZfVVNFX1ZNQUxMT0M9eQotQ09ORklHX1BHVEFCTEVfTEVWRUxTPTMKLUNPTkZJR19QSFlT
X0FERFJfVF82NEJJVD15CiAjIENPTkZJR19QTDMxMF9FUlJBVEFfNTg4MzY5IGlzIG5vdCBzZXQK
ICMgQ09ORklHX1BMMzEwX0VSUkFUQV83Mjc5MTUgaXMgbm90IHNldAogIyBDT05GSUdfUEwzMTBf
RVJSQVRBXzc1Mzk3MCBpcyBub3Qgc2V0CiAjIENPTkZJR19QTDMxMF9FUlJBVEFfNzY5NDE5IGlz
IG5vdCBzZXQKLUNPTkZJR19SQ1VfTkVFRF9TRUdDQkxJU1Q9eQogQ09ORklHX1JUQ19NQzE0Njgx
OF9MSUI9eQogQ09ORklHX1NFUklBTF9PRl9QTEFURk9STT15Ci1DT05GSUdfU0dfUE9PTD15CiBD
T05GSUdfU01QX09OX1VQPXkKIENPTkZJR19TV1BfRU1VTEFURT15CiBDT05GSUdfU1lTX1NVUFBP
UlRTX0FQTV9FTVVMQVRJT049eQotQ09ORklHX1NZU19TVVBQT1JUU19IVUdFVExCRlM9eQogIyBD
T05GSUdfVEhVTUIyX0tFUk5FTCBpcyBub3Qgc2V0Ci1DT05GSUdfVElNRVJfT0Y9eQotQ09ORklH
X1RJTUVSX1BST0JFPXkKLUNPTkZJR19UUkVFX1NSQ1U9eQogQ09ORklHX1VOQ09NUFJFU1NfSU5D
TFVERT0iZGVidWcvdW5jb21wcmVzcy5oIgogQ09ORklHX1VTRV9PRj15Ci1DT05GSUdfVkVDVE9S
U19CQVNFPTB4ZmZmZjAwMDAKIENPTkZJR19WRlA9eQogQ09ORklHX1ZGUHYzPXkKIENPTkZJR19Y
Wl9ERUNfQVJNPXkKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hcm12aXJ0LzY0L2NvbmZpZy00
LjE5IGIvdGFyZ2V0L2xpbnV4L2FybXZpcnQvNjQvY29uZmlnLTQuMTkKaW5kZXggYTcwY2QyMGY3
ZWZlLi44YmNlZjViZWQ2OGYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hcm12aXJ0LzY0L2Nv
bmZpZy00LjE5CisrKyBiL3RhcmdldC9saW51eC9hcm12aXJ0LzY0L2NvbmZpZy00LjE5CkBAIC0x
LDIwICsxLDQ5IEBACiBDT05GSUdfNjRCSVQ9eQotIyBDT05GSUdfQUNQSSBpcyBub3Qgc2V0Ci1D
T05GSUdfQVJDSF9ETUFfQUREUl9UXzY0QklUPXkKIENPTkZJR19BUkNIX0hBU19DQUNIRV9MSU5F
X1NJWkU9eQotQ09ORklHX0FSQ0hfSEFTX0dJR0FOVElDX1BBR0U9eQorQ09ORklHX0FSQ0hfSEFT
X0ZBU1RfTVVMVElQTElFUj15CiBDT05GSUdfQVJDSF9IQVNfSE9MRVNfTUVNT1JZTU9ERUw9eQot
Q09ORklHX0FSQ0hfSEFTX0tDT1Y9eQorQ09ORklHX0FSQ0hfSEFTX1NZU0NBTExfV1JBUFBFUj15
CitDT05GSUdfQVJDSF9IQVZFX05NSV9TQUZFX0NNUFhDSEc9eQorQ09ORklHX0FSQ0hfSU5MSU5F
X1JFQURfTE9DSz15CitDT05GSUdfQVJDSF9JTkxJTkVfUkVBRF9MT0NLX0JIPXkKK0NPTkZJR19B
UkNIX0lOTElORV9SRUFEX0xPQ0tfSVJRPXkKK0NPTkZJR19BUkNIX0lOTElORV9SRUFEX0xPQ0tf
SVJRU0FWRT15CitDT05GSUdfQVJDSF9JTkxJTkVfUkVBRF9VTkxPQ0s9eQorQ09ORklHX0FSQ0hf
SU5MSU5FX1JFQURfVU5MT0NLX0JIPXkKK0NPTkZJR19BUkNIX0lOTElORV9SRUFEX1VOTE9DS19J
UlE9eQorQ09ORklHX0FSQ0hfSU5MSU5FX1JFQURfVU5MT0NLX0lSUVJFU1RPUkU9eQorQ09ORklH
X0FSQ0hfSU5MSU5FX1NQSU5fTE9DSz15CitDT05GSUdfQVJDSF9JTkxJTkVfU1BJTl9MT0NLX0JI
PXkKK0NPTkZJR19BUkNIX0lOTElORV9TUElOX0xPQ0tfSVJRPXkKK0NPTkZJR19BUkNIX0lOTElO
RV9TUElOX0xPQ0tfSVJRU0FWRT15CitDT05GSUdfQVJDSF9JTkxJTkVfU1BJTl9UUllMT0NLPXkK
K0NPTkZJR19BUkNIX0lOTElORV9TUElOX1RSWUxPQ0tfQkg9eQorQ09ORklHX0FSQ0hfSU5MSU5F
X1NQSU5fVU5MT0NLPXkKK0NPTkZJR19BUkNIX0lOTElORV9TUElOX1VOTE9DS19CSD15CitDT05G
SUdfQVJDSF9JTkxJTkVfU1BJTl9VTkxPQ0tfSVJRPXkKK0NPTkZJR19BUkNIX0lOTElORV9TUElO
X1VOTE9DS19JUlFSRVNUT1JFPXkKK0NPTkZJR19BUkNIX0lOTElORV9XUklURV9MT0NLPXkKK0NP
TkZJR19BUkNIX0lOTElORV9XUklURV9MT0NLX0JIPXkKK0NPTkZJR19BUkNIX0lOTElORV9XUklU
RV9MT0NLX0lSUT15CitDT05GSUdfQVJDSF9JTkxJTkVfV1JJVEVfTE9DS19JUlFTQVZFPXkKK0NP
TkZJR19BUkNIX0lOTElORV9XUklURV9VTkxPQ0s9eQorQ09ORklHX0FSQ0hfSU5MSU5FX1dSSVRF
X1VOTE9DS19CSD15CitDT05GSUdfQVJDSF9JTkxJTkVfV1JJVEVfVU5MT0NLX0lSUT15CitDT05G
SUdfQVJDSF9JTkxJTkVfV1JJVEVfVU5MT0NLX0lSUVJFU1RPUkU9eQogQ09ORklHX0FSQ0hfTU1B
UF9STkRfQklUUz0xOAogQ09ORklHX0FSQ0hfTU1BUF9STkRfQklUU19NQVg9MjQKIENPTkZJR19B
UkNIX01NQVBfUk5EX0JJVFNfTUlOPTE4CiBDT05GSUdfQVJDSF9NTUFQX1JORF9DT01QQVRfQklU
U19NSU49MTEKLUNPTkZJR19BUkNIX1BIWVNfQUREUl9UXzY0QklUPXkKK0NPTkZJR19BUkNIX1BS
T0NfS0NPUkVfVEVYVD15CiBDT05GSUdfQVJDSF9TRUxFQ1RfTUVNT1JZX01PREVMPXkKIENPTkZJ
R19BUkNIX1NQQVJTRU1FTV9ERUZBVUxUPXkKIENPTkZJR19BUkNIX1NQQVJTRU1FTV9FTkFCTEU9
eQogQ09ORklHX0FSQ0hfU1VQUE9SVFNfREVCVUdfUEFHRUFMTE9DPXkKK0NPTkZJR19BUkNIX1NV
UFBPUlRTX0lOVDEyOD15CitDT05GSUdfQVJDSF9TVVBQT1JUU19NRU1PUllfRkFJTFVSRT15CiBD
T05GSUdfQVJDSF9TVVBQT1JUU19OVU1BX0JBTEFOQ0lORz15CitDT05GSUdfQVJDSF9VU0VfUVVF
VUVEX1JXTE9DS1M9eQorQ09ORklHX0FSQ0hfVVNFX1FVRVVFRF9TUElOTE9DS1M9eQogQ09ORklH
X0FSQ0hfVkVYUFJFU1M9eQogQ09ORklHX0FSQ0hfV0FOVF9DT01QQVRfSVBDX1BBUlNFX1ZFUlNJ
T049eQogQ09ORklHX0FSQ0hfV0FOVF9GUkFNRV9QT0lOVEVSUz15CkBAIC0zMyw1OSArNjIsNzIg
QEAgQ09ORklHX0FSTTY0X0VSUkFUVU1fODMyMDc1PXkKIENPTkZJR19BUk02NF9FUlJBVFVNXzg0
MzQxOT15CiBDT05GSUdfQVJNNjRfSFdfQUZEQk09eQogIyBDT05GSUdfQVJNNjRfTFNFX0FUT01J
Q1MgaXMgbm90IHNldAotQ09ORklHX0FSTTY0X01PRFVMRV9DTU9ERUxfTEFSR0U9eQorQ09ORklH
X0FSTTY0X01PRFVMRV9QTFRTPXkKIENPTkZJR19BUk02NF9QQUdFX1NISUZUPTEyCiBDT05GSUdf
QVJNNjRfUEFOPXkKK0NPTkZJR19BUk02NF9QQV9CSVRTPTQ4CitDT05GSUdfQVJNNjRfUEFfQklU
U180OD15CiAjIENPTkZJR19BUk02NF9QTUVNIGlzIG5vdCBzZXQKLSMgQ09ORklHX0FSTTY0X1BU
RFVNUCBpcyBub3Qgc2V0CiAjIENPTkZJR19BUk02NF9QVERVTVBfREVCVUdGUyBpcyBub3Qgc2V0
CiAjIENPTkZJR19BUk02NF9SQU5ET01JWkVfVEVYVF9PRkZTRVQgaXMgbm90IHNldAogQ09ORklH
X0FSTTY0X1NTQkQ9eQorQ09ORklHX0FSTTY0X1NWRT15CiBDT05GSUdfQVJNNjRfVUFPPXkKIENP
TkZJR19BUk02NF9WQV9CSVRTPTM5CiBDT05GSUdfQVJNNjRfVkFfQklUU18zOT15CiAjIENPTkZJ
R19BUk02NF9WQV9CSVRTXzQ4IGlzIG5vdCBzZXQKIENPTkZJR19BUk02NF9WSEU9eQorQ09ORklH
X0FSTV9BUkNIX1RJTUVSX09PTF9XT1JLQVJPVU5EPXkKIENPTkZJR19BUk1fR0lDX1YzX0lUUz15
Ci1DT05GSUdfQVJNX1BNVT15Ci0jIENPTkZJR19BUk1fU0JTQV9XQVRDSERPRyBpcyBub3Qgc2V0
CitDT05GSUdfQVJNX0dJQ19WM19JVFNfUENJPXkKIENPTkZJR19BVE9NSUM2NF9TRUxGVEVTVD15
CiBDT05GSUdfQVVESVRfQVJDSF9DT01QQVRfR0VORVJJQz15CiBDT05GSUdfQkFDS0xJR0hUX0NM
QVNTX0RFVklDRT15CiBDT05GSUdfQkFDS0xJR0hUX0xDRF9TVVBQT1JUPXkKLUNPTkZJR19CT1VO
Q0U9eQogQ09ORklHX0NMS1NSQ19NTUlPPXkKIENPTkZJR19DTEtTUkNfVkVSU0FUSUxFPXkKIENP
TkZJR19DTEtfU1A4MTA9eQogQ09ORklHX0NMS19WRVhQUkVTU19PU0M9eQogQ09ORklHX0NPTU1P
Tl9DTEtfVkVSU0FUSUxFPXkKLSMgQ09ORklHX0NPTU1PTl9DTEtfWEdFTkUgaXMgbm90IHNldAog
IyBDT05GSUdfQ1BVX0JJR19FTkRJQU4gaXMgbm90IHNldAogQ09ORklHX0NQVV9JRExFPXkKICMg
Q09ORklHX0NQVV9JRExFX0dPVl9MQURERVIgaXMgbm90IHNldAogQ09ORklHX0NQVV9JRExFX0dP
Vl9NRU5VPXkKIENPTkZJR19DUFVfUE09eQotQ09ORklHX0NSWVBUT19BQkxLX0hFTFBFUj15CitD
T05GSUdfQ1JZUFRPX0FFU19BUk02ND15CiBDT05GSUdfQ1JZUFRPX0FFU19BUk02NF9CUz15CiBD
T05GSUdfQ1JZUFRPX0FFU19BUk02NF9DRT15CiBDT05GSUdfQ1JZUFRPX0FFU19BUk02NF9DRV9C
TEs9eQogQ09ORklHX0NSWVBUT19BRVNfQVJNNjRfQ0VfQ0NNPXkKIENPTkZJR19DUllQVE9fQUVT
X0FSTTY0X05FT05fQkxLPXkKK0NPTkZJR19DUllQVE9fQ0hBQ0hBMjA9eQogQ09ORklHX0NSWVBU
T19DSEFDSEEyMF9ORU9OPXkKLUNPTkZJR19DUllQVE9fQ1JDMzJfQVJNNjQ9eQogQ09ORklHX0NS
WVBUT19DUkMzMl9BUk02NF9DRT15CiBDT05GSUdfQ1JZUFRPX0NSWVBURD15Ci0jIENPTkZJR19D
UllQVE9fREVWX0NBVklVTV9aSVAgaXMgbm90IHNldAorQ09ORklHX0NSWVBUT19HRjEyOE1VTD15
CiBDT05GSUdfQ1JZUFRPX0dIQVNIX0FSTTY0X0NFPXkKK0NPTkZJR19DUllQVE9fU0hBMT15CiBD
T05GSUdfQ1JZUFRPX1NIQTFfQVJNNjRfQ0U9eQorQ09ORklHX0NSWVBUT19TSEEyNTZfQVJNNjQ9
eQogQ09ORklHX0NSWVBUT19TSEEyX0FSTTY0X0NFPXkKKyMgQ09ORklHX0NSWVBUT19TSEEzX0FS
TTY0IGlzIG5vdCBzZXQKIENPTkZJR19DUllQVE9fU0hBNTEyX0FSTTY0PXkKLSMgQ09ORklHX0RF
QlVHX0FMSUdOX1JPREFUQSBpcyBub3Qgc2V0Ci1DT05GSUdfREVCVUdfQlVHVkVSQk9TRT15Ci1D
T05GSUdfREVCVUdfUk9EQVRBPXkKKyMgQ09ORklHX0NSWVBUT19TSEE1MTJfQVJNNjRfQ0UgaXMg
bm90IHNldAorQ09ORklHX0NSWVBUT19TSU1EPXkKKyMgQ09ORklHX0NSWVBUT19TTTNfQVJNNjRf
Q0UgaXMgbm90IHNldAorIyBDT05GSUdfQ1JZUFRPX1NNNF9BUk02NF9DRSBpcyBub3Qgc2V0CitD
T05GSUdfRE1BX0RJUkVDVF9PUFM9eQorQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSPXkKIENPTkZJ
R19EUk09eQotQ09ORklHX0RSTV9RWEw9eQogQ09ORklHX0RSTV9CT0NIUz15CitDT05GSUdfRFJN
X0JSSURHRT15CitDT05GSUdfRFJNX0tNU19IRUxQRVI9eQorQ09ORklHX0RSTV9QQU5FTD15CitD
T05GSUdfRFJNX1BBTkVMX0JSSURHRT15CitDT05GSUdfRFJNX1BBTkVMX09SSUVOVEFUSU9OX1FV
SVJLUz15CisjIENPTkZJR19EUk1fUEFORUxfU0lNUExFIGlzIG5vdCBzZXQKK0NPTkZJR19EUk1f
UVhMPXkKK0NPTkZJR19EUk1fVFRNPXkKIENPTkZJR19EUk1fVklSVElPX0dQVT15CiBDT05GSUdf
RkI9eQogQ09ORklHX0ZCX0FSTUNMQ0Q9eQpAQCAtOTQsNDMgKzEzNiw1OSBAQCBDT05GSUdfRkJf
Q0ZCX0ZJTExSRUNUPXkKIENPTkZJR19GQl9DRkJfSU1BR0VCTElUPXkKIENPTkZJR19GQl9DTURM
SU5FPXkKIENPTkZJR19GQl9NT0RFX0hFTFBFUlM9eQorIyBDT05GSUdfRkxBVE1FTV9NQU5VQUwg
aXMgbm90IHNldAogQ09ORklHX0ZTTF9FUlJBVFVNX0EwMDg1ODU9eQotIyBDT05GSUdfRlNMX01D
X0JVUyBpcyBub3Qgc2V0CiBDT05GSUdfR0VORVJJQ19CVUdfUkVMQVRJVkVfUE9JTlRFUlM9eQot
Q09ORklHX0dFTkVSSUNfQ1BVX0FVVE9QUk9CRT15CiBDT05GSUdfR0VORVJJQ19DU1VNPXkKIENP
TkZJR19HRU5FUklDX1RJTUVfVlNZU0NBTEw9eQogQ09ORklHX0dQSU9fR0VORVJJQz15CiBDT05G
SUdfR1BJT19HRU5FUklDX1BMQVRGT1JNPXkKLUNPTkZJR19IQVJERU5fQlJBTkNIX1BSRURJQ1RP
Uj15CiBDT05GSUdfSEFWRV9BTElHTkVEX1NUUlVDVF9QQUdFPXkKIENPTkZJR19IQVZFX0FSQ0hf
SFVHRV9WTUFQPXkKIENPTkZJR19IQVZFX0FSQ0hfS0FTQU49eQotQ09ORklHX0hBVkVfQVJDSF9U
UkFOU1BBUkVOVF9IVUdFUEFHRT15CitDT05GSUdfSEFWRV9BUkNIX1BSRUwzMl9SRUxPQ0FUSU9O
Uz15CitDT05GSUdfSEFWRV9BUkNIX1ZNQVBfU1RBQ0s9eQogQ09ORklHX0hBVkVfQ01QWENIR19E
T1VCTEU9eQogQ09ORklHX0hBVkVfQ01QWENIR19MT0NBTD15CiBDT05GSUdfSEFWRV9ERUJVR19C
VUdWRVJCT1NFPXkKLUNPTkZJR19IQVZFX0VCUEZfSklUPXkKLUNPTkZJR19IQVZFX0dFTkVSSUNf
UkNVX0dVUD15CiBDT05GSUdfSEFWRV9NRU1PUllfUFJFU0VOVD15CiBDT05GSUdfSEFWRV9QQVRB
X1BMQVRGT1JNPXkKLUNPTkZJR19IQVZFX1JDVV9UQUJMRV9GUkVFPXkKK0NPTkZJR19IRE1JPXkK
K0NPTkZJR19IT0xFU19JTl9aT05FPXkKICMgQ09ORklHX0hVR0VUTEJGUyBpcyBub3Qgc2V0CiBD
T05GSUdfSFdfUkFORE9NPXkKLSMgQ09ORklHX0hXX1JBTkRPTV9DQVZJVU0gaXMgbm90IHNldAog
Q09ORklHX0hXX1JBTkRPTV9WSVJUSU89eQorQ09ORklHX0kyQz15CitDT05GSUdfSTJDX0FMR09C
SVQ9eQorQ09ORklHX0kyQ19CT0FSRElORk89eQogQ09ORklHX0lMTEVHQUxfUE9JTlRFUl9WQUxV
RT0weGRlYWQwMDAwMDAwMDAwMDAKK0NPTkZJR19JTkxJTkVfUkVBRF9MT0NLPXkKK0NPTkZJR19J
TkxJTkVfUkVBRF9MT0NLX0JIPXkKK0NPTkZJR19JTkxJTkVfUkVBRF9MT0NLX0lSUT15CitDT05G
SUdfSU5MSU5FX1JFQURfTE9DS19JUlFTQVZFPXkKK0NPTkZJR19JTkxJTkVfUkVBRF9VTkxPQ0tf
Qkg9eQorQ09ORklHX0lOTElORV9SRUFEX1VOTE9DS19JUlFSRVNUT1JFPXkKK0NPTkZJR19JTkxJ
TkVfU1BJTl9MT0NLPXkKK0NPTkZJR19JTkxJTkVfU1BJTl9MT0NLX0JIPXkKK0NPTkZJR19JTkxJ
TkVfU1BJTl9MT0NLX0lSUT15CitDT05GSUdfSU5MSU5FX1NQSU5fTE9DS19JUlFTQVZFPXkKK0NP
TkZJR19JTkxJTkVfU1BJTl9UUllMT0NLPXkKK0NPTkZJR19JTkxJTkVfU1BJTl9UUllMT0NLX0JI
PXkKK0NPTkZJR19JTkxJTkVfU1BJTl9VTkxPQ0tfQkg9eQorQ09ORklHX0lOTElORV9TUElOX1VO
TE9DS19JUlFSRVNUT1JFPXkKK0NPTkZJR19JTkxJTkVfV1JJVEVfTE9DSz15CitDT05GSUdfSU5M
SU5FX1dSSVRFX0xPQ0tfQkg9eQorQ09ORklHX0lOTElORV9XUklURV9MT0NLX0lSUT15CitDT05G
SUdfSU5MSU5FX1dSSVRFX0xPQ0tfSVJRU0FWRT15CitDT05GSUdfSU5MSU5FX1dSSVRFX1VOTE9D
S19CSD15CitDT05GSUdfSU5MSU5FX1dSSVRFX1VOTE9DS19JUlFSRVNUT1JFPXkKIENPTkZJR19M
Q0RfQ0xBU1NfREVWSUNFPW0KICMgQ09ORklHX0xDRF9QTEFURk9STSBpcyBub3Qgc2V0Ci0jIENP
TkZJR19MSVFVSURJTyBpcyBub3Qgc2V0Ci1DT05GSUdfTFpPX0NPTVBSRVNTPXkKLUNPTkZJR19M
Wk9fREVDT01QUkVTUz15CiBDT05GSUdfTUZEX0NPUkU9eQogQ09ORklHX01GRF9TWVNDT049eQog
Q09ORklHX01GRF9WRVhQUkVTU19TWVNSRUc9eQogQ09ORklHX01NQz15CiBDT05GSUdfTU1DX0FS
TU1NQ0k9eQotIyBDT05GSUdfTU1DX0NBVklVTV9USFVOREVSWCBpcyBub3Qgc2V0CiAjIENPTkZJ
R19NTUNfVElGTV9TRCBpcyBub3Qgc2V0CiBDT05GSUdfTU9EVUxFU19VU0VfRUxGX1JFTEE9eQog
IyBDT05GSUdfTVREX1BIWVNNQVBfT0YgaXMgbm90IHNldApAQCAtMTQwLDE1ICsxOTgsNiBAQCBD
T05GSUdfTk9fSFpfQ09NTU9OPXkKIENPTkZJR19OT19IWl9JRExFPXkKIENPTkZJR19OUl9DUFVT
PTY0CiAjIENPTkZJR19OVU1BIGlzIG5vdCBzZXQKLSMgQ09ORklHX1BDSUVfS0lSSU4gaXMgbm90
IHNldAotQ09ORklHX1BDSV9CVVNfQUREUl9UXzY0QklUPXkKLSMgQ09ORklHX1BDSV9ISVNJIGlz
IG5vdCBzZXQKLSMgQ09ORklHX1BDSV9IT1NUX1RIVU5ERVJfRUNBTSBpcyBub3Qgc2V0Ci0jIENP
TkZJR19QQ0lfSE9TVF9USFVOREVSX1BFTSBpcyBub3Qgc2V0Ci0jIENPTkZJR19QQ0lfWEdFTkUg
aXMgbm90IHNldAotQ09ORklHX1BHVEFCTEVfTEVWRUxTPTMKLUNPTkZJR19QSFlTX0FERFJfVF82
NEJJVD15Ci0jIENPTkZJR19QSFlfWEdFTkUgaXMgbm90IHNldAogQ09ORklHX1BNPXkKIENPTkZJ
R19QTV9DTEs9eQogIyBDT05GSUdfUE1fREVCVUcgaXMgbm90IHNldApAQCAtMTU3LDIzICsyMDYs
MjUgQEAgQ09ORklHX1BNX0dFTkVSSUNfRE9NQUlOU19PRj15CiBDT05GSUdfUE9XRVJfUkVTRVQ9
eQogQ09ORklHX1BPV0VSX1JFU0VUX1ZFWFBSRVNTPXkKIENPTkZJR19QT1dFUl9TVVBQTFk9eQor
Q09ORklHX1FVRVVFRF9SV0xPQ0tTPXkKK0NPTkZJR19RVUVVRURfU1BJTkxPQ0tTPXkKICMgQ09O
RklHX1JBTkRPTUlaRV9CQVNFIGlzIG5vdCBzZXQKIENPTkZJR19SRUdNQVA9eQorQ09ORklHX1JF
R01BUF9JMkM9eQogQ09ORklHX1JFR01BUF9NTUlPPXkKK0NPTkZJR19SVENfSTJDX0FORF9TUEk9
eQogQ09ORklHX1NNQzkxWD15CiBDT05GSUdfU1BBUlNFTUVNPXkKIENPTkZJR19TUEFSU0VNRU1f
RVhUUkVNRT15CiBDT05GSUdfU1BBUlNFTUVNX01BTlVBTD15CiBDT05GSUdfU1BBUlNFTUVNX1ZN
RU1NQVA9eQogQ09ORklHX1NQQVJTRU1FTV9WTUVNTUFQX0VOQUJMRT15CitDT05GSUdfU1lOQ19G
SUxFPXkKIENPTkZJR19TWVNDVExfRVhDRVBUSU9OX1RSQUNFPXkKLUNPTkZJR19TWVNfU1VQUE9S
VFNfSFVHRVRMQkZTPXkKLSMgQ09ORklHX1RIVU5ERVJfTklDX0JHWCBpcyBub3Qgc2V0Ci0jIENP
TkZJR19USFVOREVSX05JQ19QRiBpcyBub3Qgc2V0Ci0jIENPTkZJR19USFVOREVSX05JQ19SR1gg
aXMgbm90IHNldAotIyBDT05GSUdfVEhVTkRFUl9OSUNfVkYgaXMgbm90IHNldAorQ09ORklHX1RI
UkVBRF9JTkZPX0lOX1RBU0s9eQogQ09ORklHX1VOTUFQX0tFUk5FTF9BVF9FTDA9eQogQ09ORklH
X1ZFWFBSRVNTX0NPTkZJRz15CiBDT05GSUdfVkVYUFJFU1NfU1lTQ0ZHPXkKIENPTkZJR19WSURF
T01PREVfSEVMUEVSUz15CiBDT05GSUdfVk1BUF9TVEFDSz15CitDT05GSUdfWk9ORV9ETUEzMj15
CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXJtdmlydC9jb25maWctNC4xOSBiL3RhcmdldC9s
aW51eC9hcm12aXJ0L2NvbmZpZy00LjE5CmluZGV4IGEyZDhiYjRmMjBiNy4uYWY3ZWJhMTA4Nzhj
IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXJtdmlydC9jb25maWctNC4xOQorKysgYi90YXJn
ZXQvbGludXgvYXJtdmlydC9jb25maWctNC4xOQpAQCAtMSwxNCArMSwyNCBAQAogQ09ORklHXzlQ
X0ZTPXkKICMgQ09ORklHXzlQX0ZTX1BPU0lYX0FDTCBpcyBub3Qgc2V0CiAjIENPTkZJR185UF9G
U19TRUNVUklUWSBpcyBub3Qgc2V0CitDT05GSUdfQVJDSF9ETUFfQUREUl9UXzY0QklUPXkKIENP
TkZJR19BUkNIX0NMT0NLU09VUkNFX0RBVEE9eQorQ09ORklHX0FSQ0hfSEFTX0RFQlVHX1ZJUlRV
QUw9eQogQ09ORklHX0FSQ0hfSEFTX0VMRl9SQU5ET01JWkU9eQorQ09ORklHX0FSQ0hfSEFTX0ZP
UlRJRllfU09VUkNFPXkKIENPTkZJR19BUkNIX0hBU19HQ09WX1BST0ZJTEVfQUxMPXkKK0NPTkZJ
R19BUkNIX0hBU19LQ09WPXkKK0NPTkZJR19BUkNIX0hBU19NRU1CQVJSSUVSX1NZTkNfQ09SRT15
CitDT05GSUdfQVJDSF9IQVNfUFRFX1NQRUNJQUw9eQorQ09ORklHX0FSQ0hfSEFTX1NFVF9NRU1P
Ulk9eQogQ09ORklHX0FSQ0hfSEFTX1NHX0NIQUlOPXkKK0NPTkZJR19BUkNIX0hBU19TVFJJQ1Rf
S0VSTkVMX1JXWD15CitDT05GSUdfQVJDSF9IQVNfU1RSSUNUX01PRFVMRV9SV1g9eQogQ09ORklH
X0FSQ0hfSEFTX1RJQ0tfQlJPQURDQVNUPXkKIENPTkZJR19BUkNIX0hJQkVSTkFUSU9OX1BPU1NJ
QkxFPXkKIENPTkZJR19BUkNIX1NVUFBPUlRTX0FUT01JQ19STVc9eQogQ09ORklHX0FSQ0hfU1VT
UEVORF9QT1NTSUJMRT15CitDT05GSUdfQVJDSF9TVVBQT1JUU19VUFJPQkVTPXkKIENPTkZJR19B
UkNIX1VTRV9DTVBYQ0hHX0xPQ0tSRUY9eQogQ09ORklHX0FSTV9BTUJBPXkKIENPTkZJR19BUk1f
QVJDSF9USU1FUj15CkBAIC0yMCw2ICszMCw4IEBAIENPTkZJR19BUk1fUFNDSV9GVz15CiAjIENP
TkZJR19BUk1fU1A4MDVfV0FUQ0hET0cgaXMgbm90IHNldAogQ09ORklHX0JBTExPT05fQ09NUEFD
VElPTj15CiBDT05GSUdfQkxLX01RX1BDST15CitDT05GSUdfQkxLX01RX1ZJUlRJTz15CitDT05G
SUdfQkxLX1NDU0lfUkVRVUVTVD15CiBDT05GSUdfQ0xLREVWX0xPT0tVUD15CiBDT05GSUdfQ0xL
U1JDX09GPXkKIENPTkZJR19DTEtTUkNfUFJPQkU9eQpAQCAtMzksMjAgKzUxLDI3IEBAIENPTkZJ
R19DUllQVE9fTlVMTDI9eQogQ09ORklHX0NSWVBUT19STkcyPXkKIENPTkZJR19DUllQVE9fV09S
S1FVRVVFPXkKIENPTkZJR19EQ0FDSEVfV09SRF9BQ0NFU1M9eQorQ09ORklHX0RFQlVHX0JVR1ZF
UkJPU0U9eQogQ09ORklHX0RUQz15CiBDT05GSUdfRURBQ19TVVBQT1JUPXkKIENPTkZJR19FWFQ0
X0ZTPXkKK0NPTkZJR19GQUlMT1ZFUj15CiBDT05GSUdfRklYX0VBUkxZQ09OX01FTT15CiBDT05G
SUdfRlJBTUVfUE9JTlRFUj15CitDT05GSUdfRlNfSU9NQVA9eQogQ09ORklHX0ZTX01CQ0FDSEU9
eQogQ09ORklHX0dFTkVSSUNfQUxMT0NBVE9SPXkKK0NPTkZJR19HRU5FUklDX0FSQ0hfVE9QT0xP
R1k9eQogQ09ORklHX0dFTkVSSUNfQlVHPXkKIENPTkZJR19HRU5FUklDX0NMT0NLRVZFTlRTPXkK
IENPTkZJR19HRU5FUklDX0NMT0NLRVZFTlRTX0JST0FEQ0FTVD15CitDT05GSUdfR0VORVJJQ19D
UFVfQVVUT1BST0JFPXkKIENPTkZJR19HRU5FUklDX0VBUkxZX0lPUkVNQVA9eQogQ09ORklHX0dF
TkVSSUNfSURMRV9QT0xMX1NFVFVQPXkKIENPTkZJR19HRU5FUklDX0lPPXkKK0NPTkZJR19HRU5F
UklDX0lSUV9FRkZFQ1RJVkVfQUZGX01BU0s9eQogQ09ORklHX0dFTkVSSUNfSVJRX01JR1JBVElP
Tj15CitDT05GSUdfR0VORVJJQ19JUlFfTVVMVElfSEFORExFUj15CiBDT05GSUdfR0VORVJJQ19J
UlFfU0hPVz15CiBDT05GSUdfR0VORVJJQ19JUlFfU0hPV19MRVZFTD15CiBDT05GSUdfR0VORVJJ
Q19NU0lfSVJRPXkKQEAgLTY2LDYgKzg1LDcgQEAgQ09ORklHX0dQSU9MSUI9eQogQ09ORklHX0dQ
SU9MSUJfSVJRQ0hJUD15CiBDT05GSUdfR1BJT19QTDA2MT15CiBDT05GSUdfSEFORExFX0RPTUFJ
Tl9JUlE9eQorQ09ORklHX0hBUkRFTl9CUkFOQ0hfUFJFRElDVE9SPXkKIENPTkZJR19IQVJESVJR
U19TV19SRVNFTkQ9eQogQ09ORklHX0hBU19ETUE9eQogQ09ORklHX0hBU19JT01FTT15CkBAIC03
Nyw3ICs5Nyw5IEBAIENPTkZJR19IQVZFX0FSQ0hfSlVNUF9MQUJFTD15CiBDT05GSUdfSEFWRV9B
UkNIX0tHREI9eQogQ09ORklHX0hBVkVfQVJDSF9QRk5fVkFMSUQ9eQogQ09ORklHX0hBVkVfQVJD
SF9TRUNDT01QX0ZJTFRFUj15CitDT05GSUdfSEFWRV9BUkNIX1RIUkVBRF9TVFJVQ1RfV0hJVEVM
SVNUPXkKIENPTkZJR19IQVZFX0FSQ0hfVFJBQ0VIT09LPXkKK0NPTkZJR19IQVZFX0FSQ0hfVFJB
TlNQQVJFTlRfSFVHRVBBR0U9eQogQ09ORklHX0hBVkVfQVJNX1NNQ0NDPXkKICMgQ09ORklHX0hB
VkVfQk9PVE1FTV9JTkZPX05PREUgaXMgbm90IHNldAogQ09ORklHX0hBVkVfQ0NfU1RBQ0tQUk9U
RUNUT1I9eQpAQCAtOTAsMTcgKzExMiwyMiBAQCBDT05GSUdfSEFWRV9ETUFfQVBJX0RFQlVHPXkK
IENPTkZJR19IQVZFX0RNQV9DT05USUdVT1VTPXkKIENPTkZJR19IQVZFX0RZTkFNSUNfRlRSQUNF
PXkKIENPTkZJR19IQVZFX0VGRklDSUVOVF9VTkFMSUdORURfQUNDRVNTPXkKK0NPTkZJR19IQVZF
X0VCUEZfSklUPXkKIENPTkZJR19IQVZFX0ZUUkFDRV9NQ09VTlRfUkVDT1JEPXkKIENPTkZJR19I
QVZFX0ZVTkNUSU9OX0dSQVBIX1RSQUNFUj15CiBDT05GSUdfSEFWRV9GVU5DVElPTl9UUkFDRVI9
eQogQ09ORklHX0hBVkVfR0VORVJJQ19ETUFfQ09IRVJFTlQ9eQorQ09ORklHX0hBVkVfR0VORVJJ
Q19HVVA9eQogQ09ORklHX0hBVkVfSVJRX1RJTUVfQUNDT1VOVElORz15CiBDT05GSUdfSEFWRV9N
RU1CTE9DSz15CitDT05GSUdfSEFWRV9NT0RfQVJDSF9TUEVDSUZJQz15CiBDT05GSUdfSEFWRV9O
RVRfRFNBPXkKIENPTkZJR19IQVZFX1BFUkZfRVZFTlRTPXkKIENPTkZJR19IQVZFX1BFUkZfUkVH
Uz15CiBDT05GSUdfSEFWRV9QRVJGX1VTRVJfU1RBQ0tfRFVNUD15CitDT05GSUdfSEFWRV9SQ1Vf
VEFCTEVfRlJFRT15CiBDT05GSUdfSEFWRV9SRUdTX0FORF9TVEFDS19BQ0NFU1NfQVBJPXkKK0NP
TkZJR19IQVZFX1JTRVE9eQogQ09ORklHX0hBVkVfU1lTQ0FMTF9UUkFDRVBPSU5UUz15CiBDT05G
SUdfSEFWRV9VSUQxNj15CiBDT05GSUdfSEFWRV9WSVJUX0NQVV9BQ0NPVU5USU5HX0dFTj15CkBA
IC0xMTUsMTYgKzE0MiwyMCBAQCBDT05GSUdfSVJRX0ZPUkNFRF9USFJFQURJTkc9eQogQ09ORklH
X0lSUV9XT1JLPXkKIENPTkZJR19KQkQyPXkKIENPTkZJR19MSUJGRFQ9eQorQ09ORklHX0xPQ0tf
REVCVUdHSU5HX1NVUFBPUlQ9eQogQ09ORklHX0xPQ0tfU1BJTl9PTl9PV05FUj15CiBDT05GSUdf
TUVNT1JZX0JBTExPT049eQorQ09ORklHX01FTUZEX0NSRUFURT15CitDT05GSUdfTUlHUkFUSU9O
PXkKIENPTkZJR19NVVRFWF9TUElOX09OX09XTkVSPXkKIENPTkZJR19ORUVEX0RNQV9NQVBfU1RB
VEU9eQogQ09ORklHX05FVF85UD15CiAjIENPTkZJR19ORVRfOVBfREVCVUcgaXMgbm90IHNldAog
Q09ORklHX05FVF85UF9WSVJUSU89eQorQ09ORklHX05FVF9GQUlMT1ZFUj15CiBDT05GSUdfTkVU
X0ZMT1dfTElNSVQ9eQogQ09ORklHX05PX0JPT1RNRU09eQotQ09ORklHX05SX0NQVVM9NAorQ09O
RklHX05WTUVNPXkKIENPTkZJR19PRj15CiBDT05GSUdfT0ZfQUREUkVTUz15CiBDT05GSUdfT0Zf
QUREUkVTU19QQ0k9eQpAQCAtMTMyLDYgKzE2Myw3IEBAIENPTkZJR19PRl9FQVJMWV9GTEFUVFJF
RT15CiBDT05GSUdfT0ZfRkxBVFRSRUU9eQogQ09ORklHX09GX0dQSU89eQogQ09ORklHX09GX0lS
UT15CitDT05GSUdfT0ZfS09CSj15CiBDT05GSUdfT0ZfTkVUPXkKIENPTkZJR19PRl9QQ0k9eQog
Q09ORklHX09GX1BDSV9JUlE9eQpAQCAtMTQ3LDggKzE3OSwxMiBAQCBDT05GSUdfUENJX0hPU1Rf
Q09NTU9OPXkKIENPTkZJR19QQ0lfSE9TVF9HRU5FUklDPXkKIENPTkZJR19QQ0lfTVNJPXkKIENP
TkZJR19QQ0lfTVNJX0lSUV9ET01BSU49eQorQ09ORklHX1BHVEFCTEVfTEVWRUxTPTMKK0NPTkZJ
R19QSFlTX0FERFJfVF82NEJJVD15CiBDT05GSUdfUkFUSU9OQUw9eQogQ09ORklHX1JDVV9TVEFM
TF9DT01NT049eQorQ09ORklHX1JDVV9ORUVEX1NFR0NCTElTVD15CitDT05GSUdfUkVGQ09VTlRf
RlVMTD15CiBDT05GSUdfUkZTX0FDQ0VMPXkKIENPTkZJR19SUFM9eQogQ09ORklHX1JUQ19DTEFT
Uz15CkBAIC0xNjIsMTIgKzE5OCwxNyBAQCBDT05GSUdfU0VSSUFMXzgyNTBfRlNMPXkKICMgQ09O
RklHX1NFUklBTF9BTUJBX1BMMDEwIGlzIG5vdCBzZXQKIENPTkZJR19TRVJJQUxfQU1CQV9QTDAx
MT15CiBDT05GSUdfU0VSSUFMX0FNQkFfUEwwMTFfQ09OU09MRT15CitDT05GSUdfU0dfUE9PTD15
CiBDT05GSUdfU01QPXkKIENPTkZJR19TUEFSU0VfSVJRPXkKIENPTkZJR19TUkNVPXkKIENPTkZJ
R19TV0lPVExCPXkKK0NPTkZJR19TWVNfU1VQUE9SVFNfSFVHRVRMQkZTPXkKIENPTkZJR19USUNL
X0NQVV9BQ0NPVU5USU5HPXkKK0NPTkZJR19USU1FUl9PRj15CitDT05GSUdfVElNRVJfUFJPQkU9
eQogQ09ORklHX1RSRUVfUkNVPXkKK0NPTkZJR19UUkVFX1NSQ1U9eQogQ09ORklHX1VTQl9TVVBQ
T1JUPXkKIENPTkZJR19WSVJUSU89eQogQ09ORklHX1ZJUlRJT19CQUxMT09OPXkKLS0gCjEuOS4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
