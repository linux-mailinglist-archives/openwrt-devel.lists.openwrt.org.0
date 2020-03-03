Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68F5177A49
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 16:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nSUzwuhtj6QHObwJZ5yQ9AgtB3UYPbgryBIM6qCCAtM=; b=Xq0I1y7KLvtJkS
	hVB8DkHpEhn4hZsClQDq3MrA42C7gxBa5yWm/XchpC0zMWsEYQyc2sju+grdTZTtyAeI0aifDBZS/
	lMfS+PHgLEpow6T/nxxsQuSXha8IMZmKOEuRsOZmF+19rS/y4OxvFAl0/vDi4px+r12euJicWaHCp
	UdU+Ht9F50ZdazfuVjVKXgKrGXNnwfmwq4NkcvgCsko8qT0Krw3weZKgnHLzu2ZtKIxLctxOUGKWp
	rQgDutnGGVnnxOlnOWarjFLV9hrl2T0TJvGY9firQc+CdTgDbJM5RvEHbUo2tXoGn2Agj3RK+poNL
	ZmTW4zqygxFjq9R4nY7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99Mo-0004Al-0g; Tue, 03 Mar 2020 15:21:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99Mf-00049a-V9
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 15:21:48 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 029D44A39;
 Tue,  3 Mar 2020 16:21:41 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 77c10317;
 Tue, 3 Mar 2020 16:21:28 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 16:21:35 +0100
Message-Id: <20200303152136.13801-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_072146_300687_FC64BDD5 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] kernel: iio: split buffer modules into
 separate packages
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

T3RoZXJ3aXNlIHdlIHdvdWxkIG5lZWQgdG8gZW5hYmxlIElJT19UUklHR0VSRURfQlVGRkVSIHN5
bWJvbCBpbiBhbGwKa2VybmVscyBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHVzZSBhbnkgb2YgdGhl
IElJTyBtb2R1bGVzIHdoaWNoIGFyZQp1dGlsaXppbmcgdHJpZ2dlcmVkIGJ1ZmZlciBiYXNlZCBk
YXRhIGFjcXVpc2l0aW9uIG1ldGhvZC4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Ci0tLQogcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9paW8ubWsgfCA1
NCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQxIGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVsL2xp
bnV4L21vZHVsZXMvaWlvLm1rIGIvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9paW8ubWsK
aW5kZXggOTg2ODM4YzBhZTcyLi5jZjE5M2JjMjg0MjYgMTAwNjQ0Ci0tLSBhL3BhY2thZ2Uva2Vy
bmVsL2xpbnV4L21vZHVsZXMvaWlvLm1rCisrKyBiL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVs
ZXMvaWlvLm1rCkBAIC0xMiwxNCArMTIsOSBAQCBkZWZpbmUgS2VybmVsUGFja2FnZS9paW8tY29y
ZQogICBLQ09ORklHOj0gXAogCUNPTkZJR19JSU8gXAogCUNPTkZJR19JSU9fQlVGRkVSPXkgXAot
CUNPTkZJR19JSU9fS0ZJRk9fQlVGIFwKLQlDT05GSUdfSUlPX1RSSUdHRVI9eSBcCi0JQ09ORklH
X0lJT19UUklHR0VSRURfQlVGRkVSCi0gIEZJTEVTOj0gXAotCSQoTElOVVhfRElSKS9kcml2ZXJz
L2lpby9pbmR1c3RyaWFsaW8ua28gXAotCSQoaWYgJChDT05GSUdfSUlPX1RSSUdHRVJFRF9CVUZG
RVIpLCQoTElOVVhfRElSKS9kcml2ZXJzL2lpby9idWZmZXIvaW5kdXN0cmlhbGlvLXRyaWdnZXJl
ZC1idWZmZXIua28pIFwKLQkkKExJTlVYX0RJUikvZHJpdmVycy9paW8vYnVmZmVyL2tmaWZvX2J1
Zi5rbwotICBBVVRPTE9BRDo9JChjYWxsIEF1dG9Mb2FkLDU1LGluZHVzdHJpYWxpbyBrZmlmb19i
dWYgaW5kdXN0cmlhbGlvLXRyaWdnZXJlZC1idWZmZXIpCisJQ09ORklHX0lJT19UUklHR0VSPXkK
KyAgRklMRVM6PSQoTElOVVhfRElSKS9kcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8ua28KKyAgQVVU
T0xPQUQ6PSQoY2FsbCBBdXRvTG9hZCw1NSxpbmR1c3RyaWFsaW8pCiBlbmRlZgogCiBkZWZpbmUg
S2VybmVsUGFja2FnZS9paW8tY29yZS9kZXNjcmlwdGlvbgpAQCAtMzEsOSArMjYsNDIgQEAgZW5k
ZWYKICQoZXZhbCAkKGNhbGwgS2VybmVsUGFja2FnZSxpaW8tY29yZSkpCiAKIAorZGVmaW5lIEtl
cm5lbFBhY2thZ2UvaWlvLWtmaWZvLWJ1ZgorICBTVUJNRU5VOj0kKElJT19NRU5VKQorICBUSVRM
RTo9SW5kdXN0cmlhbCBJL08gYnVmZmVyaW5nIGJhc2VkIG9uIGtmaWZvCisgIERFUEVORFM6PStr
bW9kLWlpby1jb3JlCisgIEtDT05GSUc6PUNPTkZJR19JSU9fS0ZJRk9fQlVGCisgIEZJTEVTOj0k
KExJTlVYX0RJUikvZHJpdmVycy9paW8vYnVmZmVyL2tmaWZvX2J1Zi5rbworICBBVVRPTE9BRDo9
JChjYWxsIEF1dG9Mb2FkLDU1LGtmaWZvX2J1ZikKK2VuZGVmCisKK2RlZmluZSBLZXJuZWxQYWNr
YWdlL2lpby1rZmlmby1idWYvZGVzY3JpcHRpb24KKyBBIHNpbXBsZSBmaWZvIGJhc2VkIG9uIGtm
aWZvLiAgTm90ZSB0aGF0IHRoaXMgY3VycmVudGx5IHByb3ZpZGVzIG5vIGJ1ZmZlcgorIGV2ZW50
cyBzbyBpdCBpcyB1cCB0byB1c2Vyc3BhY2UgdG8gd29yayBvdXQgaG93IG9mdGVuIHRvIHJlYWQg
ZnJvbSB0aGUgYnVmZmVyLgorZW5kZWYKKworJChldmFsICQoY2FsbCBLZXJuZWxQYWNrYWdlLGlp
by1rZmlmby1idWYpKQorCisKK2RlZmluZSBLZXJuZWxQYWNrYWdlL2luZHVzdHJpYWxpby10cmln
Z2VyZWQtYnVmZmVyCisgIFNVQk1FTlU6PSQoSUlPX01FTlUpCisgIFRJVExFOj1Qcm92aWRlcyBo
ZWxwZXIgZnVuY3Rpb25zIGZvciBzZXR0aW5nIHVwIHRyaWdnZXJlZCBidWZmZXJzLgorICBERVBF
TkRTOj0ra21vZC1paW8tY29yZSAra21vZC1paW8ta2ZpZm8tYnVmCisgIEtDT05GSUc6PUNPTkZJ
R19JSU9fVFJJR0dFUkVEX0JVRkZFUgorICBGSUxFUzo9JChMSU5VWF9ESVIpL2RyaXZlcnMvaWlv
L2J1ZmZlci9pbmR1c3RyaWFsaW8tdHJpZ2dlcmVkLWJ1ZmZlci5rbworICBBVVRPTE9BRDo9JChj
YWxsIEF1dG9Mb2FkLDU1LGluZHVzdHJpYWxpby10cmlnZ2VyZWQtYnVmZmVyKQorZW5kZWYKKwor
ZGVmaW5lIEtlcm5lbFBhY2thZ2UvaW5kdXN0cmlhbGlvLXRyaWdnZXJlZC1idWZmZXIvZGVzY3Jp
cHRpb24KKyBQcm92aWRlcyBoZWxwZXIgZnVuY3Rpb25zIGZvciBzZXR0aW5nIHVwIHRyaWdnZXJl
ZCBidWZmZXJzLgorZW5kZWYKKworJChldmFsICQoY2FsbCBLZXJuZWxQYWNrYWdlLGluZHVzdHJp
YWxpby10cmlnZ2VyZWQtYnVmZmVyKSkKKworCiBkZWZpbmUgS2VybmVsUGFja2FnZS9paW8tYWQ3
OTl4CiAgIFNVQk1FTlU6PSQoSUlPX01FTlUpCi0gIERFUEVORFM6PStrbW9kLWkyYy1jb3JlICtr
bW9kLWlpby1jb3JlCisgIERFUEVORFM6PStrbW9kLWkyYy1jb3JlICtrbW9kLWlpby1jb3JlICtr
bW9kLWluZHVzdHJpYWxpby10cmlnZ2VyZWQtYnVmZmVyCiAgIFRJVExFOj1BbmFsb2cgRGV2aWNl
cyBBRDc5OXggQURDIGRyaXZlcgogICBLQ09ORklHOj0gXAogCUNPTkZJR19BRDc5OVhfUklOR19C
VUZGRVI9eSBcCkBAIC01Miw3ICs4MCw3IEBAICQoZXZhbCAkKGNhbGwgS2VybmVsUGFja2FnZSxp
aW8tYWQ3OTl4KSkKIAogZGVmaW5lIEtlcm5lbFBhY2thZ2UvaWlvLWhtYzU4NDMKICAgU1VCTUVO
VTo9JChJSU9fTUVOVSkKLSAgREVQRU5EUzo9K2ttb2QtaTJjLWNvcmUgK2ttb2QtaWlvLWNvcmUg
K2ttb2QtcmVnbWFwLWkyYworICBERVBFTkRTOj0ra21vZC1pMmMtY29yZSAra21vZC1paW8tY29y
ZSAra21vZC1yZWdtYXAtaTJjICtrbW9kLWluZHVzdHJpYWxpby10cmlnZ2VyZWQtYnVmZmVyCiAg
IFRJVExFOj1Ib25leXdlbGwgSE1DNTh4MyBNYWduZXRvbWV0ZXIKICAgS0NPTkZJRzo9IENPTkZJ
R19TRU5TT1JTX0hNQzU4NDNfSTJDCiAgIEZJTEVTOj0gXApAQCAtODIsNyArMTEwLDcgQEAgJChl
dmFsICQoY2FsbCBLZXJuZWxQYWNrYWdlLGlpby1iaDE3NTApKQogCiBkZWZpbmUgS2VybmVsUGFj
a2FnZS9paW8tYW0yMzE1CiAgIFNVQk1FTlU6PSQoSUlPX01FTlUpCi0gIERFUEVORFM6PStrbW9k
LWkyYy1jb3JlICtrbW9kLWlpby1jb3JlCisgIERFUEVORFM6PStrbW9kLWkyYy1jb3JlICtrbW9k
LWlpby1jb3JlICtrbW9kLWluZHVzdHJpYWxpby10cmlnZ2VyZWQtYnVmZmVyCiAgIFRJVExFOj1B
c29uZyBBTTIzMTUgaHVtaWRpdHkvdGVtcGVyYXR1cmUgc2Vuc29yCiAgIEtDT05GSUc6PSBDT05G
SUdfQU0yMzE1CiAgIEZJTEVTOj0kKExJTlVYX0RJUikvZHJpdmVycy9paW8vaHVtaWRpdHkvYW0y
MzE1LmtvCkBAIC05NSw3ICsxMjMsNyBAQCAkKGV2YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsaWlv
LWFtMjMxNSkpCiAKIGRlZmluZSBLZXJuZWxQYWNrYWdlL2lpby1teHMtbHJhZGMKICAgU1VCTUVO
VTo9JChJSU9fTUVOVSkKLSAgREVQRU5EUzo9QFRBUkdFVF9teHMgK2ttb2QtaWlvLWNvcmUKKyAg
REVQRU5EUzo9QFRBUkdFVF9teHMgK2ttb2QtaWlvLWNvcmUgK2ttb2QtaW5kdXN0cmlhbGlvLXRy
aWdnZXJlZC1idWZmZXIKICAgVElUTEU6PUZyZWVzY2FsZSBpLk1YMjMvaS5NWDI4IExSQURDIEFE
QyBkcml2ZXIKICAgS0NPTkZJRzo9IFwKIAlDT05GSUdfTVhTX0xSQURDX0FEQwpAQCAtMjQ1LDcg
KzI3Myw3IEBAICQoZXZhbCAkKGNhbGwgS2VybmVsUGFja2FnZSxpaW8taHR1MjEpKQogCiBkZWZp
bmUgS2VybmVsUGFja2FnZS9paW8tY2NzODExCiAgIFNVQk1FTlU6PSQoSUlPX01FTlUpCi0gIERF
UEVORFM6PStrbW9kLWkyYy1jb3JlICtrbW9kLWlpby1jb3JlCisgIERFUEVORFM6PStrbW9kLWky
Yy1jb3JlICtrbW9kLWlpby1jb3JlICtrbW9kLWluZHVzdHJpYWxpby10cmlnZ2VyZWQtYnVmZmVy
CiAgIFRJVExFOj1BTVMgQ0NTODExIFZPQyBzZW5zb3IKICAgS0NPTkZJRzo9IFwKIAlDT05GSUdf
Q0NTODExCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
