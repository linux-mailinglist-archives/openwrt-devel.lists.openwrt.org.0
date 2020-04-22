Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082951B4EB4
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 22:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NriQVjIdYYxL8S35fx4nhCDV8KzU5IHaSip/P516RW0=; b=fEwfYXMNLbnRAO
	Zx1haU9Il++LFT0hRR7YizB7yhqVuSO+K2RzTgsk8a8D4yYCCuwXMOj64QSkQWKRDOYDO18F2eun9
	X0mL0HGIwPyehvBNpQud9Rh7DeqrMXZ4OhTPBW3MIf5Oi/7eZUefTk+5SE5UK8X1zPy45SPiSKKs8
	nLy6jQT8cGutV0tyxOoxwHih2GKN6BX7XWsQyeTt2ZsujYPlb8C8RGGgQfavY/V6GO+hzqpGUokaN
	j6GBGRdep5f+tNFRkXgWpmByotk4WQP391EZoc5Vg+AFf6f0luj95rd318chvM0WTiTjVG4ORqhMO
	t01O6fcIeEomqpMPVWZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRMSf-0002Cj-Az; Wed, 22 Apr 2020 20:59:13 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRMSX-0002AM-TR
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 20:59:08 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id 03MKx1Tm023283
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Wed, 22 Apr 2020 22:59:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1587589141; bh=WwtnTic677eDCxUXfo3LUnLl6cxT4itQ8t8tu8bLHpo=;
 h=From:To:Cc:Subject:Date:Message-Id:References:From;
 b=fifVSJ48Avy85B6i3UCFNBp0OAHfKV19z4t/plp5v6Htp+zuBewrnIx4jFoxlxqpW
 m7G8lDVqcJ5kZeN58b+5i+SaJfO80neXh7oFI0MmzK138h56sGsfYFH2B2N05qF4Ac
 gMN48QBjn+Ai9vdQCUPJfhhnjbfftb83qkDS8COQ=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id 03MKx1YJ023274;
 Wed, 22 Apr 2020 22:59:01 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 Apr 2020 22:58:51 +0200
Message-Id: <20200422205852.22847-3-bjorn@mork.no>
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
X-CRM114-CacheID: sfid-20200422_135906_452329_6AC0044A 
X-CRM114-Status: UNSURE (   7.40  )
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
Subject: [OpenWrt-Devel] [RFC 2/3] build: implement per-image package sets
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

UmV1c2luZyB0aGUgcGVyLXRhcmdldCByb290ZnMgY29kZSB0byBhbGxvdyBhIHBlci1pbWFnZSBy
b290ZnMsIGludHJvZHVjaW5nCmEgbmV3IG9wdGlvbmFsIElNQUdFX1BBQ0tBR0VTLzxpbWFnZW5h
bWU+IGRldmljZSB2YXJpYWJsZS4gVGhpcyBhbGxvd3MgYWRkaW5nCm9yIHJlbW92aW5nIHBhY2th
Z2VzIGZyb20gdGhlIGRlZmF1bHQgc2V0LiAgVGhpcyBpcyB1c2VmdWwgaWYgc29tZSBvZiB0aGUK
aW1hZ2VzIGhhdmUgYWRkaXRpb25hbCBzaXplIHJlc3RyaWN0aW9ucy4KClRoaXMgaXMgY3VycmVu
dGx5IFByb29mLW9mLUNvbmNlcHQgb25seS4gIE5lZWRzIElCIHZhbGlkYXRpb24vZml4ZXMsIGxl
Z2FjeS1kZXZpY2VzCnN1cHBvcnQsIGNvZGUgY2xlYW51cCBhbmQgbG90cyBvZiB0ZXN0aW5nCgpT
aWduZWQtb2ZmLWJ5OiBCasO4cm4gTW9yayA8Ympvcm5AbW9yay5ubz4KLS0tCiBpbmNsdWRlL2lt
YWdlLm1rIHwgMjAgKysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvaW1hZ2UubWsg
Yi9pbmNsdWRlL2ltYWdlLm1rCmluZGV4IDk4NGI2NGZiOWM3My4uNjliMmJkNTQ0NWZhIDEwMDY0
NAotLS0gYS9pbmNsdWRlL2ltYWdlLm1rCisrKyBiL2luY2x1ZGUvaW1hZ2UubWsKQEAgLTQ2NCwx
MyArNDY0LDE4IEBAIGRlZmluZSBtZXJnZV9wYWNrYWdlcwogICApCiBlbmRlZgogCitkZWZpbmUg
c2V0X3Jvb3Rmc19wYWNrYWdlcworICBST09URlNfSUQvJCgxKSA6PSAkJChjYWxsIG1rZnNfcGFj
a2FnZXNfaWQsJCgyKSkKKyAgUEFDS0FHRVNfJCQoUk9PVEZTX0lELyQoMSkpIDo9ICQoMikKK2Vu
ZGVmCisKIGRlZmluZSBEZXZpY2UvQ2hlY2svQ29tbW9uCiAgIF9QUk9GSUxFX1NFVCA9ICQkKHN0
cmlwICQkKGZvcmVhY2ggcHJvZmlsZSwkJChQUk9GSUxFUykgREVWSUNFXyQoMSksJCQoY2FsbCBE
RVZJQ0VfQ0hFQ0tfUFJPRklMRSwkJChwcm9maWxlKSkpKQogICBERVZJQ0VfUEFDS0FHRVMgKz0g
JCQoY2FsbCBleHRyYV9wYWNrYWdlcywkJChERVZJQ0VfUEFDS0FHRVMpKQorICAkJChldmFsICQk
KGlmICQkKF9QUk9GSUxFX1NFVCksJCQoZm9yZWFjaCBpbWFnZSwkJChJTUFHRVMpLCQkKGlmICQk
KElNQUdFX1BBQ0tBR0VTLyQkKGltYWdlKSksJCQoY2FsbCBzZXRfcm9vdGZzX3BhY2thZ2VzLCQo
MSkvJCQoaW1hZ2UpLCQkKElNQUdFX1BBQ0tBR0VTLyQkKGltYWdlKSkpKSkpKQogICBpZmRlZiBU
QVJHRVRfUEVSX0RFVklDRV9ST09URlMKLSAgICAkJChldmFsICQkKGNhbGwgbWVyZ2VfcGFja2Fn
ZXMsX1BBQ0tBR0VTLCQkKERFVklDRV9QQUNLQUdFUykgJCQoY2FsbCBERVZJQ0VfRVhUUkFfUEFD
S0FHRVMsJCgxKSkpKQotICAgIFJPT1RGU19JRC8kKDEpIDo9ICQkKGlmICQkKF9QUk9GSUxFX1NF
VCksJCQoY2FsbCBta2ZzX3BhY2thZ2VzX2lkLCQkKF9QQUNLQUdFUykpKQotICAgIFBBQ0tBR0VT
XyQkKFJPT1RGU19JRC8kKDEpKSA6PSAkJChfUEFDS0FHRVMpCisgICAgJCQoaWYgJCQoX1BST0ZJ
TEVfU0VUKSwkJChldmFsICQkKGNhbGwgbWVyZ2VfcGFja2FnZXMsX1BBQ0tBR0VTLCQkKERFVklD
RV9QQUNLQUdFUykgJCQoY2FsbCBERVZJQ0VfRVhUUkFfUEFDS0FHRVMsJCgxKSkpKSkKKyAgICAk
JChpZiAkJChfUFJPRklMRV9TRVQpLCQkKGNhbGwgc2V0X3Jvb3Rmc19wYWNrYWdlcywkKDEpLCQk
KF9QQUNLQUdFUykpKQogICBlbmRpZgogZW5kZWYKIApAQCAtNTUwLDE2ICs1NTUsMTcgQEAgZGVm
aW5lIERldmljZS9CdWlsZC9pbWFnZQogCSAgJChCSU5fRElSKS8kKGNhbGwgSU1BR0VfTkFNRSwk
KDEpLCQoMikpJCQoR1pfU1VGRklYKSkKICAgJChldmFsICQoY2FsbCBEZXZpY2UvRXhwb3J0LCQo
S0RJUikvdG1wLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSksJCgxKSkpCiAKLSAgUk9PVEZT
LyQoMSkvJCgzKSA6PSBcCisgIFBLR0lEIDo9ICQkKGlmICQkKFJPT1RGU19JRC8kKDMpLyQoMikp
LCQkKFJPT1RGU19JRC8kKDMpLyQoMikpLCQoaWYgJChUQVJHRVRfUEVSX0RFVklDRV9ST09URlMp
LCQkKFJPT1RGU19JRC8kKDMpKSkpCisgIFJPT1RGUy8kKDEpLyQoMykvJCgyKSA6PSBcCiAJJChL
RElSKS9yb290LiQoMSkkJChzdHJpcCBcCiAJCSQkKGlmICQkKEZTX09QVElPTlMvJCgxKSksK2Zz
PSQkKGNhbGwgcGFyYW1fbWFuZ2xlLCQkKEZTX09QVElPTlMvJCgxKSkpKSBcCiAJKSQkKHN0cmlw
IFwKLQkJJChpZiAkKFRBUkdFVF9QRVJfREVWSUNFX1JPT1RGUyksK3BrZz0kJChST09URlNfSUQv
JCgzKSkpIFwKKwkJJCQoaWYgJCQoUEtHSUQpLCtwa2c9JCQoUEtHSUQpKSBcCiAJKQogICBpZm5k
ZWYgSUIKLSAgICAkJChST09URlMvJCgxKS8kKDMpKTogJChpZiAkKFRBUkdFVF9QRVJfREVWSUNF
X1JPT1RGUyksdGFyZ2V0LWRpci0kJChST09URlNfSUQvJCgzKSkpCisgICAgJCQoUk9PVEZTLyQo
MSkvJCgzKS8kKDIpKTogJCQoaWYgJCQoUEtHSUQpLHRhcmdldC1kaXItJCQoUEtHSUQpKQogICBl
bmRpZgotICAkKEtESVIpL3RtcC8kKGNhbGwgSU1BR0VfTkFNRSwkKDEpLCQoMikpOiAkJChLRElS
X0tFUk5FTF9JTUFHRSkgJCQoUk9PVEZTLyQoMSkvJCgzKSkKKyAgJChLRElSKS90bXAvJChjYWxs
IElNQUdFX05BTUUsJCgxKSwkKDIpKTogJCQoS0RJUl9LRVJORUxfSU1BR0UpICQkKFJPT1RGUy8k
KDEpLyQoMykvJCgyKSkKIAlAcm0gLWYgJCRACiAJWyAtZiAkJCh3b3JkIDEsJCReKSAtYSAtZiAk
JCh3b3JkIDIsJCReKSBdCiAJJCQoY2FsbCBjb25jYXRfY21kLCQoaWYgJChJTUFHRS8kKDIpLyQo
MSkpLCQoSU1BR0UvJCgyKS8kKDEpKSwkKElNQUdFLyQoMikpKSkKLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
