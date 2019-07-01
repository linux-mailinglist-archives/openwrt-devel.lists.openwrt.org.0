Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7FC5C157
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 18:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwaTDapT4ICN8zNUnW7w7qrPW+sHzyQ3sPA7UwluTZY=; b=mRog1IcULy2/WH
	euqG8XvnB9bi21+7GS1Bw35MEZGSmi7f5cMRv7JiIMWI/mTBDykeGOTL8v/TcqDRI7e43YoAmFjYH
	CvMH0hGUvw/6nPKhJRQSXEAmf0wprGYbtNSRXYPjGxJJoL3sjxYpMwKYVjnL/Kx4jpMcBfOfu2JD7
	b13LhGI5K1rooYDWVHeyo2RCG3TlT3u6+N7S6n1eZCAW5gz6VveZBQ34hRleStufukNMXgxRjz/YQ
	e0BZWpCVy+LcQ3LDfZO91XNd6iFQv+I6ply/1Rb4wX5VRHVKtOUwyt1j7SFifZwmmuSMT4HDMjK6l
	Ivxu4AUTZhcos4udWkWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzMa-000790-GX; Mon, 01 Jul 2019 16:41:08 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzLy-0006co-GH
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 16:40:36 +0000
Received: by mail-qk1-x731.google.com with SMTP id m14so11498295qka.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jul 2019 09:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tlrUVNxGO2zzhqrjWFE/lYCt9ydWtyXxF6IbB75El4w=;
 b=kY20vL7co5fd9NcY3dsDc94+ug3x/X0cTrj1W3oWdeGB1NRMHoG+eO2ROFZvtNjTD2
 IrH4zBBIDM7633lgwoB2ALr07knR85Q9KFPe6nwHE9QYF5gYEhrZtOLPQ8V8GODSqlQ5
 FvXJhD0PrhtJbalUEFUdojeGYUjsOBKY4qu4hjOQW+9szip4U35GIurhZ/MwK7z/ydHR
 mtRShiEcQqWu398ZJt6NiHuwkJEVZNPxU2w4oUxyMNCMqvZKWUHd8t0S1aWiVIi4cPUw
 nzUK1qEALPLKMSb32YpAzpLttuBbFUJ9c0kfAJ4S4MhFKy4Gat7+oOWxwsNnH3DMo45P
 cksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tlrUVNxGO2zzhqrjWFE/lYCt9ydWtyXxF6IbB75El4w=;
 b=ID7iOYMmtfWjbylyXBhyBcxbjAeyzHVpJIE2B/Zlbh1h39xlevWsVOK/p2EGxizj0g
 eLRdHbTpXPiDdEG4wL262Zcsk3atP4COVzaQArE/vxoxNJw53zwNJHdKfdqVcg49HEcC
 SOtnb+fMYvbmhD6VNnYSP/dEaCkWDFIeD8tRv+zmv6wGOKaw+o206xRGT9a37Hjd2TqS
 rhqC84AnbGBGuUYLJy1RvV1Dnjo0+hqXa/ymTeC7YbNZcu/rUapTvdRJz9P+EHilCSCO
 t8RZXu+11mYIbZ070My5zR0122JxnnUvzycfxXboeUSAvmRSVG7n7o56uUT1F6WkI6bK
 reQg==
X-Gm-Message-State: APjAAAVyd6Buv4FOt9KYncTiMhsXsloVXQg/CJuEdkzELw5BYgAfndPV
 H08VFbCc4MmdI0L8TjX9gDsXGEgR
X-Google-Smtp-Source: APXvYqzQozabbWvYPHjxVQm3rvhUB1QeaC4S1MuIqM1CtC2WcBmewFQ4Hoxf6fmw1v4Fn4O6Vq6Cdw==
X-Received: by 2002:a05:620a:13f9:: with SMTP id
 h25mr19441486qkl.283.1561999229084; 
 Mon, 01 Jul 2019 09:40:29 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 70sm4780910qkj.118.2019.07.01.09.40.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 09:40:28 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  1 Jul 2019 13:39:59 -0300
Message-Id: <20190701164002.13915-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701164002.13915-1-cotequeiroz@gmail.com>
References: <20190701164002.13915-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_094030_585618_6246A376 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 1/3] wolfssl: update to 3.15.7,
 fix Makefile
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBpbmNsdWRlcyBhIGZpeCBmb3IgYSBtZWRpdW0tbGV2ZWwgcG90ZW50aWFsIGNhY2hlIGF0
dGFjayB3aXRoIGEKdmFyaWFudCBvZiBCbGVpY2hlbmJhY2hlcuKAmXMgYXR0YWNrLiAgUGF0Y2hl
cyB3ZXJlIHJlZnJlc2hlZC4KSW5jcmVhc2VkIEZQX01BWF9CSVRTIHRvIGFsbG93IDQwOTYtYml0
IFJTQSBrZXlzLgpGaXhlZCBwb2x5MTMwNSBidWlsZCBvcHRpb24sIGFuZCBzb21lIE1ha2VmaWxl
IHVwZGF0ZXMuCgpTaWduZWQtb2ZmLWJ5OiBFbmVhcyBVIGRlIFF1ZWlyb3ogPGNvdGVxdWVpcm96
QGdtYWlsLmNvbT4KCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvd29sZnNzbC9Db25maWcuaW4g
Yi9wYWNrYWdlL2xpYnMvd29sZnNzbC9Db25maWcuaW4KaW5kZXggNTBiMGJiOWNkZi4uNGFhMTYz
YjM2MSAxMDA2NDQKLS0tIGEvcGFja2FnZS9saWJzL3dvbGZzc2wvQ29uZmlnLmluCisrKyBiL3Bh
Y2thZ2UvbGlicy93b2xmc3NsL0NvbmZpZy5pbgpAQCAtNTMsNyArNTMsNyBAQCBjb25maWcgV09M
RlNTTF9IQVNfRUNDMjU1MTkKIAlkZXBlbmRzIG9uIFdPTEZTU0xfSEFTX0VDQwogCWRlZmF1bHQg
bgogCi1jb25maWcgV09MRlNTTF9IQVNfUE9MWV8xMzA1Citjb25maWcgV09MRlNTTF9IQVNfUE9M
WTEzMDUKIAlib29sICJJbmNsdWRlIFBvbHktMTMwNSBzdXBwb3J0IgogCWRlZmF1bHQgbgogCmRp
ZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvd29sZnNzbC9NYWtlZmlsZSBiL3BhY2thZ2UvbGlicy93
b2xmc3NsL01ha2VmaWxlCmluZGV4IDIzYmIxYzUyMjAuLjdhYWE1NjI1MzkgMTAwNjQ0Ci0tLSBh
L3BhY2thZ2UvbGlicy93b2xmc3NsL01ha2VmaWxlCisrKyBiL3BhY2thZ2UvbGlicy93b2xmc3Ns
L01ha2VmaWxlCkBAIC04LDExICs4LDEwIEBACiBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5tawog
CiBQS0dfTkFNRTo9d29sZnNzbAotUEtHX1ZFUlNJT046PTMuMTUuMy1zdGFibGUKLVBLR19SRUxF
QVNFOj0yCitQS0dfVkVSU0lPTjo9My4xNS43LXN0YWJsZQorUEtHX1JFTEVBU0U6PTEKIAotUEtH
X1NPVVJDRTo9JChQS0dfTkFNRSktJChQS0dfVkVSU0lPTikuemlwCi0jIFBLR19TT1VSQ0VfVVJM
Oj1odHRwczovL3d3dy53b2xmc3NsLmNvbS8KK1BLR19TT1VSQ0U6PSQoUEtHX05BTUUpLSQoUEtH
X1ZFUlNJT04pLnRhci5negogUEtHX1NPVVJDRV9VUkw6PWh0dHBzOi8vZ2l0aHViLmNvbS93b2xm
U1NML3dvbGZzc2wvYXJjaGl2ZS92JChQS0dfVkVSU0lPTikKIFBLR19IQVNIOj1kYzk3YzA3YTc2
NjdiMzlhODkwZTE0ZjRiNGEyMDlmNTE1MjRhNGNhYmVlN2FkYjZjODA4MjJlZTc4YzFmNjJhCiAK
QEAgLTIwLDE1ICsxOSwxNiBAQCBQS0dfRklYVVA6PWxpYnRvb2wKIFBLR19JTlNUQUxMOj0xCiBQ
S0dfVVNFX01JUFMxNjo9MAogUEtHX0JVSUxEX1BBUkFMTEVMOj0xCi1QS0dfTElDRU5TRTo9R1BM
LTIuMCsKLVBLR19DUEVfSUQ6PWNwZTovYTp5YXNzbDpjeWFzc2wKK1BLR19MSUNFTlNFOj1HUEwt
Mi4wLW9yLWxhdGVyCitQS0dfTElDRU5TRV9GSUxFUzo9TElDRU5TSU5HIENPUFlJTkcKK1BLR19D
UEVfSUQ6PWNwZTovYTp3b2xmc3NsOndvbGZzc2wKIAogUEtHX0NPTkZJR19ERVBFTkRTOj1cCiAJ
Q09ORklHX1dPTEZTU0xfSEFTX0FFU19DQ00gQ09ORklHX1dPTEZTU0xfSEFTX0FFU19HQ00gXAog
CUNPTkZJR19XT0xGU1NMX0hBU19BUkM0IENPTkZJR19XT0xGU1NMX0hBU19DSEFDSEEgXAogCUNP
TkZJR19XT0xGU1NMX0hBU19ERVMzIENPTkZJR19XT0xGU1NMX0hBU19ESCBDT05GSUdfV09MRlNT
TF9IQVNfRFRMUyBcCiAJQ09ORklHX1dPTEZTU0xfSEFTX0VDQyBDT05GSUdfV09MRlNTTF9IQVNf
RUNDMjU1MTkgXAotCUNPTkZJR19XT0xGU1NMX0hBU19PQ1NQIENPTkZJR19XT0xGU1NMX0hBU19Q
T0xZXzEzMDUgXAorCUNPTkZJR19XT0xGU1NMX0hBU19PQ1NQIENPTkZJR19XT0xGU1NMX0hBU19Q
T0xZMTMwNSBcCiAJQ09ORklHX1dPTEZTU0xfSEFTX1BTSyBDT05GSUdfV09MRlNTTF9IQVNfU0VT
U0lPTl9USUNLRVQgXAogCUNPTkZJR19XT0xGU1NMX0hBU19XUEFTCiAKQEAgLTQyLDcgKzQyLDcg
QEAgZGVmaW5lIFBhY2thZ2UvbGlid29sZnNzbAogICBVUkw6PWh0dHA6Ly93d3cud29sZnNzbC5j
b20vCiAgIE1FTlU6PTEKICAgUFJPVklERVM6PWxpYmN5YXNzbAotICBBQklfVkVSU0lPTjo9MTgK
KyAgQUJJX1ZFUlNJT046PTE5CiBlbmRlZgogCiBkZWZpbmUgUGFja2FnZS9saWJ3b2xmc3NsL2Rl
c2NyaXB0aW9uCkBAIC01NCw3ICs1NCw3IEBAIGRlZmluZSBQYWNrYWdlL2xpYndvbGZzc2wvY29u
ZmlnCiAJc291cmNlICIkKFNPVVJDRSkvQ29uZmlnLmluIgogZW5kZWYKIAotVEFSR0VUX0NGTEFH
UyArPSAkKEZQSUMpCitUQVJHRVRfQ0ZMQUdTICs9ICQoRlBJQykgLURGUF9NQVhfQklUUz04MTky
CiAKICMgLS1lbmFibGUtc3R1bm5lbCBuZWVkZWQgZm9yIE9wZW5TU0wgQVBJIGNvbXBhdGliaWxp
dHkgYml0cwogQ09ORklHVVJFX0FSR1MgKz0gXApkaWZmIC0tZ2l0IGEvcGFja2FnZS9saWJzL3dv
bGZzc2wvcGF0Y2hlcy8xMDAtZGlzYWJsZS1oYXJkZW5pbmctY2hlY2sucGF0Y2ggYi9wYWNrYWdl
L2xpYnMvd29sZnNzbC9wYXRjaGVzLzEwMC1kaXNhYmxlLWhhcmRlbmluZy1jaGVjay5wYXRjaApp
bmRleCBkOTEzYjVmZGVhLi44YTUxNDM0NjMzIDEwMDY0NAotLS0gYS9wYWNrYWdlL2xpYnMvd29s
ZnNzbC9wYXRjaGVzLzEwMC1kaXNhYmxlLWhhcmRlbmluZy1jaGVjay5wYXRjaAorKysgYi9wYWNr
YWdlL2xpYnMvd29sZnNzbC9wYXRjaGVzLzEwMC1kaXNhYmxlLWhhcmRlbmluZy1jaGVjay5wYXRj
aApAQCAtMSw2ICsxLDYgQEAKIC0tLSBhL3dvbGZzc2wvd29sZmNyeXB0L3NldHRpbmdzLmgKICsr
KyBiL3dvbGZzc2wvd29sZmNyeXB0L3NldHRpbmdzLmgKLUBAIC0xNjI0LDcgKzE2MjQsNyBAQCBl
eHRlcm4gdm9pZCB1SVRST040X2ZyZWUodm9pZCAqcCkgOworQEAgLTE3NTksNyArMTc1OSw3IEBA
IGV4dGVybiB2b2lkIHVJVFJPTjRfZnJlZSh2b2lkICpwKSA7CiAgI2VuZGlmCiAgCiAgLyogd2Fy
bmluZyBmb3Igbm90IHVzaW5nIGhhcmRlbiBidWlsZCBvcHRpb25zIChkZWZhdWx0IHdpdGggLi9j
b25maWd1cmUpICovCkBAIC04LDQgKzgsNCBAQAogKyNpZiAwCiAgICAgICNpZiAoZGVmaW5lZChV
U0VfRkFTVF9NQVRIKSAmJiAhZGVmaW5lZChURk1fVElNSU5HX1JFU0lTVEFOVCkpIHx8IFwKICAg
ICAgICAgIChkZWZpbmVkKEhBVkVfRUNDKSAmJiAhZGVmaW5lZChFQ0NfVElNSU5HX1JFU0lTVEFO
VCkpIHx8IFwKLSAgICAgICAgICghZGVmaW5lZChOT19SU0EpICYmICFkZWZpbmVkKFdDX1JTQV9C
TElORElORykgJiYgIWRlZmluZWQoSEFWRV9GSVBTKSkKKyAgICAgICAgICghZGVmaW5lZChOT19S
U0EpICYmICFkZWZpbmVkKFdDX1JTQV9CTElORElORykgJiYgIWRlZmluZWQoSEFWRV9GSVBTKSAm
JiBcCmRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvd29sZnNzbC9wYXRjaGVzLzkwMC1yZW1vdmUt
YnJva2VuLWF1dG9jb25mLW1hY3Jvcy5wYXRjaCBiL3BhY2thZ2UvbGlicy93b2xmc3NsL3BhdGNo
ZXMvOTAwLXJlbW92ZS1icm9rZW4tYXV0b2NvbmYtbWFjcm9zLnBhdGNoCmluZGV4IDY2NTgyY2Zj
NDYuLjZiMDg2MTI4OGYgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbGlicy93b2xmc3NsL3BhdGNoZXMv
OTAwLXJlbW92ZS1icm9rZW4tYXV0b2NvbmYtbWFjcm9zLnBhdGNoCisrKyBiL3BhY2thZ2UvbGli
cy93b2xmc3NsL3BhdGNoZXMvOTAwLXJlbW92ZS1icm9rZW4tYXV0b2NvbmYtbWFjcm9zLnBhdGNo
CkBAIC0xLDYgKzEsNiBAQAogLS0tIGEvY29uZmlndXJlLmFjCiArKysgYi9jb25maWd1cmUuYWMK
LUBAIC00MTk4LDcgKzQxOTgsNiBAQCBBQ19DT05GSUdfRklMRVMoW3N0YW1wLWhdLCBbZWNobyB0
aW1lc3RhCitAQCAtNDYxNCw3ICs0NjE0LDYgQEAgQUNfQ09ORklHX0ZJTEVTKFtzdGFtcC1oXSwg
W2VjaG8gdGltZXN0YQogIEFDX0NPTkZJR19GSUxFUyhbTWFrZWZpbGUgd29sZnNzbC92ZXJzaW9u
Lmggd29sZnNzbC9vcHRpb25zLmggY3lhc3NsL29wdGlvbnMuaCBzdXBwb3J0L3dvbGZzc2wucGMg
cnBtL3NwZWNdKQogIAogIEFYX0NSRUFURV9HRU5FUklDX0NPTkZJRwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
