Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AC61B4EB9
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 23:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYKSndojVDVwE9mlwRqbzrjVXcAYGpF4lSX7kTH2JZ4=; b=L7bPkN7Z9G258E
	rORwasHY4gg0CE9TIJOUCJBSLHLOzxPYQDf0CkCvr2I45yRjpZtgr12hAHiZSLRTp5UeSvzCncABn
	gpnsrFNrGeJJKSpHze5IYKEeOIpHrx9qbN4q7qMgPZ4zYmi49LHuCbCc80r2fjlQqeRG9viS0cjiU
	r2ewZ13CqMs2q6ktC5IbJWTJYlVdR0KqlRh1Y5i/c21ZbFWyN+4t2bxhPyV0yKR48toUXaaG8oabh
	DdeBSFuJIfoChY0VRmZrPV51+0dzYODX1qdBv4bBitSpEyFxeOh0S8WtwTXaPHVu4l/O3jd6bCrpa
	LrXyt0xITlMIPzKzZv6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRMTL-0002wx-RE; Wed, 22 Apr 2020 20:59:55 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRMSY-0002AQ-Ew
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 20:59:10 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id 03MKx2oc023316
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Wed, 22 Apr 2020 22:59:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1587589142; bh=IoC/szqkE6zvtm7EdUusj2QSVd5dJ+srv8LDqx7yjgU=;
 h=From:To:Cc:Subject:Date:Message-Id:References:From;
 b=gHpJUhwq9qfiQRqVxv1Z5OE00ztdg46+GwyGxxVSCnREzc5bK0gwS5wPDW2VoY1hM
 l13xgmCjH3M6JnHK/rStOpNqeWInThMyblPwk82xm39LRUuOEZNQAL3L27XHgQqzFu
 L98Jjh+4DjZ5SCQjReVo8OU1KNNOEWgDCitn6VXU=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id 03MKx2cq023309;
 Wed, 22 Apr 2020 22:59:02 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 Apr 2020 22:58:52 +0200
Message-Id: <20200422205852.22847-4-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200422205852.22847-1-bjorn@mork.no>
References: <20200422205852.22847-1-bjorn@mork.no>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_135906_843451_436EFF10 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC 3/3] build: per-image package set for initramfs
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
Cc: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TW92ZSB0aGUga2VybmVsIGluaXRyYW1mcyBidWlsZCBsYXRlciBpbiB0aGUgYnVpbGQgcHJvY2Vz
cwphbmQgaW50byBpbWFnZS5tay4gIFRoaXMgYWxsb3dzIHVzaW5nIHBlci10YXJnZXQgYW5kIHBl
ci1pbWFnZQpyb290ZnMgYmFzZSBkaXJlY3RvcmllcyBmb3IgdGhlIGluaXRyYW1mcyBidWlsZCB0
b28uCgpQcm9vZi1vZi1Db25jZXB0IHN0YXRlLiAgVGhpcyBuZWVkcyBjbGVhbnVwIGFuZCB0ZXN0
aW5nLCBhbmQKc29tZW9uZSB3aG8ga25vd3MgaG93IHRvIHdyaXRlIGEgTWFrZWZpbGVhLi4uCgpT
aWduZWQtb2ZmLWJ5OiBCasO4cm4gTW9yayA8Ympvcm5AbW9yay5ubz4KLS0tCiBpbmNsdWRlL2lt
YWdlLm1rICAgICAgICAgICB8IDE1ICsrKysrKysrKysrKystLQogaW5jbHVkZS9rZXJuZWwtYnVp
bGQubWsgICAgfCAgMSAtCiBpbmNsdWRlL2tlcm5lbC1kZWZhdWx0cy5tayB8ICA4ICsrKystLS0t
CiAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9pbWFnZS5tayBiL2luY2x1ZGUvaW1hZ2UubWsKaW5kZXggNjliMmJk
NTQ0NWZhLi5iY2RkYjhlMjkzNjIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvaW1hZ2UubWsKKysrIGIv
aW5jbHVkZS9pbWFnZS5tawpAQCAtMTAsNiArMTAsNyBAQCBpbmNsdWRlICQoSU5DTFVERV9ESVIp
L3ByZXJlcS5tawogaW5jbHVkZSAkKElOQ0xVREVfRElSKS9rZXJuZWwubWsKIGluY2x1ZGUgJChJ
TkNMVURFX0RJUikvdmVyc2lvbi5tawogaW5jbHVkZSAkKElOQ0xVREVfRElSKS9pbWFnZS1jb21t
YW5kcy5taworaW5jbHVkZSAkKElOQ0xVREVfRElSKS9rZXJuZWwtZGVmYXVsdHMubWsKIAogaWZu
ZGVmIElCCiAgIGlmZGVmIENPTkZJR19UQVJHRVRfUEVSX0RFVklDRV9ST09URlMKQEAgLTQ2OSwx
MCArNDcwLDE3IEBAIGRlZmluZSBzZXRfcm9vdGZzX3BhY2thZ2VzCiAgIFBBQ0tBR0VTXyQkKFJP
T1RGU19JRC8kKDEpKSA6PSAkKDIpCiBlbmRlZgogCitkZWZpbmUgc2V0X2luaXRyYW1mc19wYWNr
YWdlcworICBQS0dJRCA6PSAkJChjYWxsIG1rZnNfcGFja2FnZXNfaWQsJCgyKSkKKyAgS0VSTkVM
X0lOSVRSQU1GU19OQU1FIDo9ICQkKHN0cmlwICQkKEtFUk5FTF9JTklUUkFNRlNfTkFNRSkrcGtn
PSQkKFBLR0lEKSkKKyAgUEFDS0FHRVNfJCQoUEtHSUQpIDo9ICQoMikKK2VuZGVmCisKIGRlZmlu
ZSBEZXZpY2UvQ2hlY2svQ29tbW9uCiAgIF9QUk9GSUxFX1NFVCA9ICQkKHN0cmlwICQkKGZvcmVh
Y2ggcHJvZmlsZSwkJChQUk9GSUxFUykgREVWSUNFXyQoMSksJCQoY2FsbCBERVZJQ0VfQ0hFQ0tf
UFJPRklMRSwkJChwcm9maWxlKSkpKQogICBERVZJQ0VfUEFDS0FHRVMgKz0gJCQoY2FsbCBleHRy
YV9wYWNrYWdlcywkJChERVZJQ0VfUEFDS0FHRVMpKQotICAkJChldmFsICQkKGlmICQkKF9QUk9G
SUxFX1NFVCksJCQoZm9yZWFjaCBpbWFnZSwkJChJTUFHRVMpLCQkKGlmICQkKElNQUdFX1BBQ0tB
R0VTLyQkKGltYWdlKSksJCQoY2FsbCBzZXRfcm9vdGZzX3BhY2thZ2VzLCQoMSkvJCQoaW1hZ2Up
LCQkKElNQUdFX1BBQ0tBR0VTLyQkKGltYWdlKSkpKSkpKQorICAkJChpZiAkJChfUFJPRklMRV9T
RVQpLCQkKGV2YWwgJCQoZm9yZWFjaCBpbWFnZSwkJChJTUFHRVMpLCQkKGlmICQkKElNQUdFX1BB
Q0tBR0VTLyQkKGltYWdlKSksJCQoY2FsbCBzZXRfcm9vdGZzX3BhY2thZ2VzLCQoMSkvJCQoaW1h
Z2UpLCQkKElNQUdFX1BBQ0tBR0VTLyQkKGltYWdlKSkpKSkpKQorICAkJChpZiAkJChfUFJPRklM
RV9TRVQpJCQoS0VSTkVMX0lOSVRSQU1GUykkJChJTUFHRV9QQUNLQUdFUy9pbml0cmFtZnMpLCQk
KGV2YWwgJCQoY2FsbCBzZXRfaW5pdHJhbWZzX3BhY2thZ2VzLCQoMSksJCQoSU1BR0VfUEFDS0FH
RVMvaW5pdHJhbWZzKSkpKQogICBpZmRlZiBUQVJHRVRfUEVSX0RFVklDRV9ST09URlMKICAgICAk
JChpZiAkJChfUFJPRklMRV9TRVQpLCQkKGV2YWwgJCQoY2FsbCBtZXJnZV9wYWNrYWdlcyxfUEFD
S0FHRVMsJCQoREVWSUNFX1BBQ0tBR0VTKSAkJChjYWxsIERFVklDRV9FWFRSQV9QQUNLQUdFUywk
KDEpKSkpKQogICAgICQkKGlmICQkKF9QUk9GSUxFX1NFVCksJCQoY2FsbCBzZXRfcm9vdGZzX3Bh
Y2thZ2VzLCQoMSksJCQoX1BBQ0tBR0VTKSkpCkBAIC00OTAsMTAgKzQ5OCwxMyBAQCBlbmRlZgog
CiBpZm5kZWYgSUIKIGRlZmluZSBEZXZpY2UvQnVpbGQvaW5pdHJhbWZzCisgIFBLR0lEIDo9ICQo
cGFyYW1fZ2V0LHBrZywkKHN1YnN0ICssJChzcGFjZSksJCQoS0VSTkVMX0lOSVRSQU1GU19OQU1F
KSkpCiAgICQoY2FsbCBEZXZpY2UvRXhwb3J0LCQoS0RJUikvdG1wLyQkKEtFUk5FTF9JTklUUkFN
RlNfSU1BR0UpLCQoMSkpCiAgICQkKF9UQVJHRVQpOiAkJChpZiAkJChLRVJORUxfSU5JVFJBTUZT
KSwkKEJJTl9ESVIpLyQkKEtFUk5FTF9JTklUUkFNRlNfSU1BR0UpKQogCi0gICQoS0RJUikvJCQo
S0VSTkVMX0lOSVRSQU1GU19OQU1FKTo6IGltYWdlX3ByZXBhcmUKKyAgJChLRElSKS8kJChLRVJO
RUxfSU5JVFJBTUZTX05BTUUpOjogJCQoaWYgJCQoUEtHSUQpLHRhcmdldC1kaXItJCQoUEtHSUQp
KSBpbWFnZV9wcmVwYXJlCisJJCQoY2FsbCBLZXJuZWwvQ29tcGlsZUltYWdlL0luaXRyYW1mcywk
KGlmICQkKFBLR0lEKSwkKEtESVIpL3RhcmdldC1kaXItJCQoUEtHSUQpLCQoVEFSR0VUX0RJUikp
KQorCiAgICQoQklOX0RJUikvJCQoS0VSTkVMX0lOSVRSQU1GU19JTUFHRSk6ICQoS0RJUikvdG1w
LyQkKEtFUk5FTF9JTklUUkFNRlNfSU1BR0UpCiAJY3AgJCReICQkQAogCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2tlcm5lbC1idWlsZC5tayBiL2luY2x1ZGUva2VybmVsLWJ1aWxkLm1rCmluZGV4IGMz
NzFlNzhhYjliMC4uNjZmNTIxZDdhYTdiIDEwMDY0NAotLS0gYS9pbmNsdWRlL2tlcm5lbC1idWls
ZC5taworKysgYi9pbmNsdWRlL2tlcm5lbC1idWlsZC5tawpAQCAtMzIsNyArMzIsNiBAQCBlbmRl
ZgogCiBkZWZpbmUgS2VybmVsL0NvbXBpbGVJbWFnZQogCSQoY2FsbCBLZXJuZWwvQ29tcGlsZUlt
YWdlL0RlZmF1bHQpCi0JJChjYWxsIEtlcm5lbC9Db21waWxlSW1hZ2UvSW5pdHJhbWZzKQogZW5k
ZWYKIAogZGVmaW5lIEtlcm5lbC9DbGVhbgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9rZXJuZWwtZGVm
YXVsdHMubWsgYi9pbmNsdWRlL2tlcm5lbC1kZWZhdWx0cy5tawppbmRleCBmNDQyMTA2ZWNiY2Iu
LjkzNDY1ODE3MGY5YiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9rZXJuZWwtZGVmYXVsdHMubWsKKysr
IGIvaW5jbHVkZS9rZXJuZWwtZGVmYXVsdHMubWsKQEAgLTc0LDExICs3NCwxMSBAQCBpZm5lcSAo
JChDT05GSUdfVEFSR0VUX1JPT1RGU19JTklUUkFNRlMpLCkKIAkkKENQKSAkKEdFTkVSSUNfUExB
VEZPUk1fRElSKS9vdGhlci1maWxlcy9pbml0ICQoS0VSTkVMX0JVSUxEX0RJUikvaW5pdHJhbWZz
LmluaXQKIAkkKGlmICQoU09VUkNFX0RBVEVfRVBPQ0gpLHRvdWNoIC1oY2QgIkAkKFNPVVJDRV9E
QVRFX0VQT0NIKSIgJChLRVJORUxfQlVJTERfRElSKS9pbml0cmFtZnMuaW5pdCkKIAllY2hvICJm
aWxlIC9pbml0ICQoS0VSTkVMX0JVSUxEX0RJUikvaW5pdHJhbWZzLmluaXQgMDc1NSAwIDAiID4k
KEtFUk5FTF9CVUlMRF9ESVIpL2luaXRyYW1mcy50eHQKLQkkKGV2YWwgSU5JVFJBTUZTX1NPVVJD
RVM/PSIkKHN0cmlwICQoS0VSTkVMX0JVSUxEX0RJUikvaW5pdHJhbWZzLnR4dCAkKFRBUkdFVF9E
SVIpICQoSU5JVFJBTUZTX0VYVFJBX0ZJTEVTKSkiKQorCSQoZXZhbCBJTklUUkFNRlNfU09VUkNF
Uz0kKEtFUk5FTF9CVUlMRF9ESVIpL2luaXRyYW1mcy50eHQgJCgxKSAkKElOSVRSQU1GU19FWFRS
QV9GSUxFUykpCiAgICAgZW5kZWYKICAgZWxzZQogICAgIGRlZmluZSBLZXJuZWwvQ29uZmlndXJl
L0luaXRyYW1mcwotCSQoZXZhbCBJTklUUkFNRlNfU09VUkNFUz0iJChjYWxsIHFzdHJpcCwkKENP
TkZJR19FWFRFUk5BTF9DUElPKSkiKQorCSQoZXZhbCBJTklUUkFNRlNfU09VUkNFUz0kKGNhbGwg
cXN0cmlwLCQoQ09ORklHX0VYVEVSTkFMX0NQSU8pKSkKICAgICBlbmRlZgogICBlbmRpZgogZWxz
ZQpAQCAtMTE1LDcgKzExNSw3IEBAIGVuZGVmCiAKIGlmbmVxICgkKENPTkZJR19UQVJHRVRfUk9P
VEZTX0lOSVRSQU1GUyksKQogZGVmaW5lIEtlcm5lbC9Db21waWxlSW1hZ2UvSW5pdHJhbWZzCi0J
JChjYWxsIEtlcm5lbC9Db25maWd1cmUvSW5pdHJhbWZzKQorCSQoY2FsbCBLZXJuZWwvQ29uZmln
dXJlL0luaXRyYW1mcywkKDEpKQogCSskKEtFUk5FTF9NQUtFKSBcCiAJCUNPTkZJR19CTEtfREVW
X0lOSVRSRD15IFwKIAkJQ09ORklHX0lOSVRSQU1GU19ST09UX1VJRD0kKHNoZWxsIGlkIC11KSBc
CkBAIC0xMjYsNyArMTI2LDcgQEAgZGVmaW5lIEtlcm5lbC9Db21waWxlSW1hZ2UvSW5pdHJhbWZz
CiAJCQkkKGlmICQoQ09ORklHX1RBUkdFVF9JTklUUkFNRlNfQ09NUFJFU1NJT05fJChjKSksXAog
CQkJCUNPTkZJR19JTklUUkFNRlNfQ09NUFJFU1NJT05fJChjKT15IENPTkZJR19SRF8kKGMpPXks
XAogCQkJCUNPTkZJR19JTklUUkFNRlNfQ09NUFJFU1NJT05fJChjKT1uIENPTkZJR19SRF8kKGMp
PW4pKVwKLQkJQ09ORklHX0lOSVRSQU1GU19TT1VSQ0U9JChJTklUUkFNRlNfU09VUkNFUykgXAor
CQlDT05GSUdfSU5JVFJBTUZTX1NPVVJDRT0iJChJTklUUkFNRlNfU09VUkNFUykiIFwKIAkJJChp
ZiAkKEtFUk5FTE5BTUUpLCQoS0VSTkVMTkFNRSksYWxsKQogCSQoY2FsbCBLZXJuZWwvQ29weUlt
YWdlLC1pbml0cmFtZnMpCiBlbmRlZgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
