Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A7510091C
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 17:22:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yweuc4bw8fhi/5v0PnTp/0+3M9y31S5ZB2okSw87U/4=; b=F0X8WSAlc0d07H
	eqzcKRsPsVWABq6IsP33okkMPyT2Kw/qFyyJBMRx965RDwCpjY4KAhPjIzXqfbmOM7B0z6Z9PAxdZ
	RvMYQTlqWnkfGZSNAk4r/qOl4axZj72ToWvuOKqK8wKHXMqv6ciVpAwtIzPf/Q8eRHArHd+g+DxCL
	j5sS+AuOgSjcwXC6R2g5zsDfbkU8MVKivP2GRAnCER5wxARdJOtv3s/+7pEcsylDDD9c2DpKyZiHD
	ikOwl+3jymD7MLx6/vZZ7xL0GYql5G5qgIm9nDZyRJIYa7VUQ7BrySb74olFSHWa361AHsUlNY7RW
	NjrlbUmiSI3kKhe0TJvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjnS-0001gv-0y; Mon, 18 Nov 2019 16:22:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjnB-0001Xm-P6
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 16:22:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 280C64EF8;
 Mon, 18 Nov 2019 17:22:16 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 61ff25b5;
 Mon, 18 Nov 2019 17:22:06 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 Nov 2019 17:22:13 +0100
Message-Id: <20191118162213.32485-2-ynezz@true.cz>
In-Reply-To: <20191118162213.32485-1-ynezz@true.cz>
References: <20191118162213.32485-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_082221_970200_2EFC7AC2 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] treewide: kernel config: remove runtime
 options
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

UmVtb3ZlIENDX0hBU19BU01fR09UTywgQ0NfSVNfR0NDIGFuZCBHQ0NfVkVSU0lPTiBrZXJuZWwg
Y29uZmlnIG9wdGlvbnMKd2hpY2ggYXJlIHNldCBhdCBydW50aW1lIGFuZCBpZ25vcmVkIHNpbmNl
IGNvbW1pdCA3ZGVlNmViNzM4OGMKKCJrZXJuZWwtYnVpbGQ6IGlnbm9yZSBydW50aW1lIGNvbmZp
ZyBvcHRpb25zIGR1cmluZyByZWNvbmZpZyIpLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgvYXBtODIxeHgvY29uZmlnLTQuMTkg
ICAgICAgICB8IDIgLS0KIHRhcmdldC9saW51eC9icmNtMjcwOC9iY20yNzA4L2NvbmZpZy00LjE5
IHwgMSAtCiB0YXJnZXQvbGludXgvYnJjbTI3MDgvYmNtMjcwOS9jb25maWctNC4xOSB8IDEgLQog
dGFyZ2V0L2xpbnV4L2JyY20yNzA4L2JjbTI3MTAvY29uZmlnLTQuMTkgfCAxIC0KIHRhcmdldC9s
aW51eC9icmNtMjcwOC9iY20yNzExL2NvbmZpZy00LjE5IHwgMSAtCiB0YXJnZXQvbGludXgvZ2Vu
ZXJpYy9jb25maWctNC4xOSAgICAgICAgICB8IDIgLS0KIHRhcmdldC9saW51eC9tZWRpYXRlay9t
dDc2MjIvY29uZmlnLTQuMTkgIHwgMSAtCiB0YXJnZXQvbGludXgvbWVkaWF0ZWsvbXQ3NjI5L2Nv
bmZpZy00LjE5ICB8IDEgLQogdGFyZ2V0L2xpbnV4L212ZWJ1L2NvbmZpZy00LjE5ICAgICAgICAg
ICAgfCAxIC0KIHRhcmdldC9saW51eC9teHMvY29uZmlnLTQuMTkgICAgICAgICAgICAgIHwgMiAt
LQogdGFyZ2V0L2xpbnV4L3N1bnhpL2NvbmZpZy00LjE5ICAgICAgICAgICAgfCAxIC0KIHRhcmdl
dC9saW51eC96eW5xL2NvbmZpZy00LjE5ICAgICAgICAgICAgIHwgMSAtCiAxMiBmaWxlcyBjaGFu
Z2VkLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXBtODIxeHgv
Y29uZmlnLTQuMTkgYi90YXJnZXQvbGludXgvYXBtODIxeHgvY29uZmlnLTQuMTkKaW5kZXggMzU4
ZWIzYzcxNmIwLi43MmQ2NDhmZDIzNTMgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hcG04MjF4
eC9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGludXgvYXBtODIxeHgvY29uZmlnLTQuMTkKQEAg
LTUxLDcgKzUxLDYgQEAgQ09ORklHX0JVSUxEX1NBTFQ9IiIKICMgQ09ORklHX0NBTllPTkxBTkRT
IGlzIG5vdCBzZXQKIENPTkZJR19DQ19IQVNfU0FOQ09WX1RSQUNFX1BDPXkKIENPTkZJR19DQ19I
QVNfU1RBQ0tQUk9URUNUT1JfTk9ORT15Ci1DT05GSUdfQ0NfSVNfR0NDPXkKIENPTkZJR19DTEFO
R19WRVJTSU9OPTAKIENPTkZJR19DTE9ORV9CQUNLV0FSRFM9eQogQ09ORklHX0NNRExJTkU9InJv
b3Rmc3R5cGU9c3F1YXNoZnMgbm9pbml0cmQiCkBAIC0xMDksNyArMTA4LDYgQEAgQ09ORklHX0VY
VFJBX1RBUkdFVFM9InVJbWFnZSIKIENPTkZJR19GSVhFRF9QSFk9eQogQ09ORklHX0ZSRUVaRVI9
eQogIyBDT05GSUdfRlNMX0xCQyBpcyBub3Qgc2V0Ci1DT05GSUdfR0NDX1ZFUlNJT049NzAzMDAK
IENPTkZJR19HRU5FUklDX0FUT01JQzY0PXkKIENPTkZJR19HRU5FUklDX0JVRz15CiBDT05GSUdf
R0VORVJJQ19DTE9DS0VWRU5UUz15CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYnJjbTI3MDgv
YmNtMjcwOC9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9icmNtMjcwOC9iY20yNzA4L2NvbmZp
Zy00LjE5CmluZGV4IDRlYjAzYTVkOTU3Zi4uZjY1Nzk0NGE3MDE0IDEwMDY0NAotLS0gYS90YXJn
ZXQvbGludXgvYnJjbTI3MDgvYmNtMjcwOC9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGludXgv
YnJjbTI3MDgvYmNtMjcwOC9jb25maWctNC4xOQpAQCAtNzIsNyArNzIsNiBAQCBDT05GSUdfQkxL
X1NDU0lfUkVRVUVTVD15CiBDT05GSUdfQlJDTV9DSEFSX0RSSVZFUlM9eQogQ09ORklHX0JVSUxE
X0JJTjJDPXkKICMgQ09ORklHX0NBQ0hFX0wyWDAgaXMgbm90IHNldAotQ09ORklHX0NDX0hBU19B
U01fR09UTz15CiBDT05GSUdfQ0xLREVWX0xPT0tVUD15CiBDT05GSUdfQ0xLU1JDX01NSU89eQog
Q09ORklHX0NMT05FX0JBQ0tXQVJEUz15CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYnJjbTI3
MDgvYmNtMjcwOS9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9icmNtMjcwOC9iY20yNzA5L2Nv
bmZpZy00LjE5CmluZGV4IDEyZDg4MDU1NGQ0NS4uMDYzNTdkOTdmYmNiIDEwMDY0NAotLS0gYS90
YXJnZXQvbGludXgvYnJjbTI3MDgvYmNtMjcwOS9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGlu
dXgvYnJjbTI3MDgvYmNtMjcwOS9jb25maWctNC4xOQpAQCAtODksNyArODksNiBAQCBDT05GSUdf
QlJDTV9DSEFSX0RSSVZFUlM9eQogQ09ORklHX0JST0FEQ09NX1BIWT15CiBDT05GSUdfQlVJTERf
QklOMkM9eQogIyBDT05GSUdfQ0FDSEVfTDJYMCBpcyBub3Qgc2V0Ci1DT05GSUdfQ0NfSEFTX0FT
TV9HT1RPPXkKIENPTkZJR19DTEtERVZfTE9PS1VQPXkKIENPTkZJR19DTEtTUkNfTU1JTz15CiBD
T05GSUdfQ0xPTkVfQkFDS1dBUkRTPXkKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9icmNtMjcw
OC9iY20yNzEwL2NvbmZpZy00LjE5IGIvdGFyZ2V0L2xpbnV4L2JyY20yNzA4L2JjbTI3MTAvY29u
ZmlnLTQuMTkKaW5kZXggYzlkZDM3NDQyZTYxLi42YTMzMzA4ZjM1N2QgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9icmNtMjcwOC9iY20yNzEwL2NvbmZpZy00LjE5CisrKyBiL3RhcmdldC9saW51
eC9icmNtMjcwOC9iY20yNzEwL2NvbmZpZy00LjE5CkBAIC0xNDIsNyArMTQyLDYgQEAgQ09ORklH
X0JVSUxEX0JJTjJDPXkKIENPTkZJR19DQVZJVU1fRVJSQVRVTV8yMjM3NT15CiBDT05GSUdfQ0FW
SVVNX0VSUkFUVU1fMjMxNTQ9eQogQ09ORklHX0NBVklVTV9FUlJBVFVNXzI3NDU2PXkKLUNPTkZJ
R19DQ19IQVNfQVNNX0dPVE89eQogQ09ORklHX0NMS0RFVl9MT09LVVA9eQogQ09ORklHX0NMS1NS
Q19NTUlPPXkKIENPTkZJR19DTE9ORV9CQUNLV0FSRFM9eQpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L2JyY20yNzA4L2JjbTI3MTEvY29uZmlnLTQuMTkgYi90YXJnZXQvbGludXgvYnJjbTI3MDgv
YmNtMjcxMS9jb25maWctNC4xOQppbmRleCBhZjcyNDJmMWIwZGQuLjNjN2QwMDVmYmE2ZCAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JyY20yNzA4L2JjbTI3MTEvY29uZmlnLTQuMTkKKysrIGIv
dGFyZ2V0L2xpbnV4L2JyY20yNzA4L2JjbTI3MTEvY29uZmlnLTQuMTkKQEAgLTE0Niw3ICsxNDYs
NiBAQCBDT05GSUdfQlVJTERfQklOMkM9eQogQ09ORklHX0NBVklVTV9FUlJBVFVNXzIyMzc1PXkK
IENPTkZJR19DQVZJVU1fRVJSQVRVTV8yMzE1ND15CiBDT05GSUdfQ0FWSVVNX0VSUkFUVU1fMjc0
NTY9eQotQ09ORklHX0NDX0hBU19BU01fR09UTz15CiBDT05GSUdfQ0xLREVWX0xPT0tVUD15CiBD
T05GSUdfQ0xLU1JDX01NSU89eQogQ09ORklHX0NMT05FX0JBQ0tXQVJEUz15CmRpZmYgLS1naXQg
YS90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9nZW5lcmlj
L2NvbmZpZy00LjE5CmluZGV4IDI3OGI5NjljNWY3Mi4uMGZhZGQwZDE2YTI5IDEwMDY0NAotLS0g
YS90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGludXgvZ2Vu
ZXJpYy9jb25maWctNC4xOQpAQCAtNzUyLDcgKzc1Miw2IEBAIENPTkZJR19DQVJEQlVTPXkKICMg
Q09ORklHX0NDUzgxMSBpcyBub3Qgc2V0CiBDT05GSUdfQ0NfSEFTX1NBTkNPVl9UUkFDRV9QQz15
CiBDT05GSUdfQ0NfSEFTX1NUQUNLUFJPVEVDVE9SX05PTkU9eQotQ09ORklHX0NDX0lTX0dDQz15
CiBDT05GSUdfQ0NfT1BUSU1JWkVfRk9SX1BFUkZPUk1BTkNFPXkKICMgQ09ORklHX0NDX09QVElN
SVpFX0ZPUl9TSVpFIGlzIG5vdCBzZXQKICMgQ09ORklHX0NEUk9NX1BLVENEVkQgaXMgbm90IHNl
dApAQCAtMTYwNCw3ICsxNjAzLDYgQEAgQ09ORklHX0dBQ1RfUFJPQj15CiAjIENPTkZJR19HQU1F
UE9SVCBpcyBub3Qgc2V0CiAjIENPTkZJR19HQVRFV09SS1NfR1cxNjA4MyBpcyBub3Qgc2V0CiAj
IENPTkZJR19HQ0NfUExVR0lOUyBpcyBub3Qgc2V0Ci1DT05GSUdfR0NDX1ZFUlNJT049ODAzMDAK
ICMgQ09ORklHX0dDT1YgaXMgbm90IHNldAogIyBDT05GSUdfR0NPVl9LRVJORUwgaXMgbm90IHNl
dAogIyBDT05GSUdfR0RCX1NDUklQVFMgaXMgbm90IHNldApkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L21lZGlhdGVrL210NzYyMi9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9tZWRpYXRlay9t
dDc2MjIvY29uZmlnLTQuMTkKaW5kZXggOGY1ZTNiY2FlZjNlLi5hNmM0OTJjNDNjNjAgMTAwNjQ0
Ci0tLSBhL3RhcmdldC9saW51eC9tZWRpYXRlay9tdDc2MjIvY29uZmlnLTQuMTkKKysrIGIvdGFy
Z2V0L2xpbnV4L21lZGlhdGVrL210NzYyMi9jb25maWctNC4xOQpAQCAtMTMxLDcgKzEzMSw2IEBA
IENPTkZJR19CVF9MRT15CiBDT05GSUdfQlRfTVRLVUFSVD15CiBDT05GSUdfQlRfUUNBPXkKIENP
TkZJR19CVUlMRF9CSU4yQz15Ci1DT05GSUdfQ0NfSEFTX0FTTV9HT1RPPXkKIENPTkZJR19DTEtE
RVZfTE9PS1VQPXkKIENPTkZJR19DTEtTUkNfTU1JTz15CiBDT05GSUdfQ0xPQ0tfVEhFUk1BTD15
CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbWVkaWF0ZWsvbXQ3NjI5L2NvbmZpZy00LjE5IGIv
dGFyZ2V0L2xpbnV4L21lZGlhdGVrL210NzYyOS9jb25maWctNC4xOQppbmRleCAyZGFiNGUzOTNk
YjguLjk4ZDY3YTBmYmQ1ZiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L21lZGlhdGVrL210NzYy
OS9jb25maWctNC4xOQorKysgYi90YXJnZXQvbGludXgvbWVkaWF0ZWsvbXQ3NjI5L2NvbmZpZy00
LjE5CkBAIC01Miw3ICs1Miw2IEBAIENPTkZJR19CTEtfU0NTSV9SRVFVRVNUPXkKIENPTkZJR19C
U0RfUFJPQ0VTU19BQ0NUPXkKIENPTkZJR19CU0RfUFJPQ0VTU19BQ0NUX1YzPXkKIENPTkZJR19D
QUNIRV9MMlgwPXkKLUNPTkZJR19DQ19IQVNfQVNNX0dPVE89eQogIyBDT05GSUdfQ0NfT1BUSU1J
WkVfRk9SX1BFUkZPUk1BTkNFIGlzIG5vdCBzZXQKIENPTkZJR19DQ19PUFRJTUlaRV9GT1JfU0la
RT15CiBDT05GSUdfQ0hSX0RFVl9TQ0g9eQpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1
L2NvbmZpZy00LjE5IGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvbmZpZy00LjE5CmluZGV4IDRmMWVm
MTg4ZWZjMi4uMjQwOTNmZDM4NmFkIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvbXZlYnUvY29u
ZmlnLTQuMTkKKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvbmZpZy00LjE5CkBAIC03Myw3ICs3
Myw2IEBAIENPTkZJR19CTEtfU0NTSV9SRVFVRVNUPXkKIENPTkZJR19CT1VOQ0U9eQogIyBDT05G
SUdfQ0FDSEVfRkVST0NFT05fTDIgaXMgbm90IHNldAogQ09ORklHX0NBQ0hFX0wyWDA9eQotQ09O
RklHX0NDX0hBU19BU01fR09UTz15CiBDT05GSUdfQ0xLREVWX0xPT0tVUD15CiBDT05GSUdfQ0xL
U1JDX0FSTV9HTE9CQUxfVElNRVJfU0NIRURfQ0xPQ0s9eQogQ09ORklHX0NMS1NSQ19NTUlPPXkK
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9teHMvY29uZmlnLTQuMTkgYi90YXJnZXQvbGludXgv
bXhzL2NvbmZpZy00LjE5CmluZGV4IDRkYWY0OWY4MDk2NC4uYTVjM2M1NzhjMzYyIDEwMDY0NAot
LS0gYS90YXJnZXQvbGludXgvbXhzL2NvbmZpZy00LjE5CisrKyBiL3RhcmdldC9saW51eC9teHMv
Y29uZmlnLTQuMTkKQEAgLTQ0LDcgKzQ0LDYgQEAgQ09ORklHX0FSTV9QQVRDSF9QSFlTX1ZJUlQ9
eQogQ09ORklHX0FSTV9USFVNQj15CiBDT05GSUdfQVRBR1M9eQogQ09ORklHX0FVVE9fWlJFTEFE
RFI9eQotQ09ORklHX0NDX0hBU19BU01fR09UTz15CiBDT05GSUdfQ0xLREVWX0xPT0tVUD15CiBD
T05GSUdfQ0xLU1JDX01NSU89eQogQ09ORklHX0NMT05FX0JBQ0tXQVJEUz15CkBAIC0xMDAsNyAr
OTksNiBAQCBDT05GSUdfRklYX0VBUkxZQ09OX01FTT15CiBDT05GSUdfRlJBTUVfUE9JTlRFUj15
CiBDT05GSUdfRlNfSU9NQVA9eQogQ09ORklHX0ZTX01CQ0FDSEU9eQotQ09ORklHX0dDQ19WRVJT
SU9OPTgwMzAwCiBDT05GSUdfR0VORVJJQ19BTExPQ0FUT1I9eQogQ09ORklHX0dFTkVSSUNfQVRP
TUlDNjQ9eQogQ09ORklHX0dFTkVSSUNfQlVHPXkKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9z
dW54aS9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9zdW54aS9jb25maWctNC4xOQppbmRleCBi
MWE5ZDczNDJjNTUuLjNhMmIyODQzYzg5ZiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3N1bnhp
L2NvbmZpZy00LjE5CisrKyBiL3RhcmdldC9saW51eC9zdW54aS9jb25maWctNC4xOQpAQCAtNzks
NyArNzksNiBAQCBDT05GSUdfQkxLX1NDU0lfUkVRVUVTVD15CiBDT05GSUdfQk9VTkNFPXkKIENP
TkZJR19DQUNIRV9MMlgwPXkKIENPTkZJR19DQU49eQotQ09ORklHX0NDX0hBU19BU01fR09UTz15
CiBDT05GSUdfQ0xLREVWX0xPT0tVUD15CiBDT05GSUdfQ0xLU1JDX01NSU89eQogQ09ORklHX0NM
T05FX0JBQ0tXQVJEUz15CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvenlucS9jb25maWctNC4x
OSBiL3RhcmdldC9saW51eC96eW5xL2NvbmZpZy00LjE5CmluZGV4IGNmYTZkMDRlM2E5Ny4uOWI1
YjE2MzMxZGM1IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvenlucS9jb25maWctNC4xOQorKysg
Yi90YXJnZXQvbGludXgvenlucS9jb25maWctNC4xOQpAQCAtODAsNyArODAsNiBAQCBDT05GSUdf
QlVJTERfQklOMkM9eQogQ09ORklHX0NBQ0hFX0wyWDA9eQogQ09ORklHX0NBREVOQ0VfVFRDX1RJ
TUVSPXkKIENPTkZJR19DQURFTkNFX1dBVENIRE9HPXkKLUNPTkZJR19DQ19IQVNfQVNNX0dPVE89
eQogQ09ORklHX0NMS0RFVl9MT09LVVA9eQogQ09ORklHX0NMS1NSQ19BUk1fR0xPQkFMX1RJTUVS
X1NDSEVEX0NMT0NLPXkKIENPTkZJR19DTEtTUkNfTU1JTz15CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
