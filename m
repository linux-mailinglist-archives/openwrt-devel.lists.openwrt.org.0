Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AC6127080
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymTXrmcmsEDQk+ozNUITreK2s+CwKthDy9Gd3IlKgT8=; b=GFF1PJar4+PIwy
	7rVh00aZDLzwhSLsyrV0oumJbVCXMFmO8xHPEcgPYNphQohU1xRBaEnZgJZtzHvNCEEKNeZeX36Tw
	lgxhSmWyeSoYi5Dl6apl6Oj4GLS3u8vZmzHa4NaP2Xo8CambjTHrLHLJ4etVa9GoP4Knr5lesvv0C
	2Jg1y4SsWdVxjWaCRd8UgmJimKcpEBJZ9f/V73Y/sX8lFIyX2sljlfwg0wj40Ut4s6psodbvBdmm8
	3gBAKefEn69VxkBE0LT/tcPzPchLCuigQ09t7PTPIREsOGsX9PDOuLKhGmtmg/fQ6XRKOgEbTeJAe
	d8HTJFcFesI2CWlmThWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii449-0001Lq-RI; Thu, 19 Dec 2019 22:14:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41L-000554-Ie
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 25DCE4BD0;
 Thu, 19 Dec 2019 23:11:46 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0c98974c;
 Thu, 19 Dec 2019 23:11:36 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:21 +0100
Message-Id: <20191219221125.22646-13-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141147_945949_976935D5 
X-CRM114-Status: UNSURE (   9.13  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 12/16] workaround possibly false
 positive uses of memory after it is freed
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nLTkgaGFzIHJlcG9ydGVkIGZvbGxvd2luZzoKCiBsaWJ1Ym94
L2xpc3QuaDo4MzoyMjogd2FybmluZzogVXNlIG9mIG1lbW9yeSBhZnRlciBpdCBpcyBmcmVlZAog
ICAgICAgIGVudHJ5LT5uZXh0LT5wcmV2ID0gZW50cnktPnByZXY7CiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fgoKIHVidXNkX2V2ZW50LmM6NDI6Mzogd2FybmluZzogVXNl
IG9mIG1lbW9yeSBhZnRlciBpdCBpcyBmcmVlZAogICAgICAgICAgICAgICAgdWJ1c2RfZGVsZXRl
X2V2ZW50X3NvdXJjZShldik7CiAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fgoKV2hpY2ggbWlnaHQgYmUgYSBmYWxzZSBwb3NpdGl2ZXMsIGJ1dCBpbiBvcmRlciB0
byBtYWtlIHRoZSBjb2RlIHBhc3MgdGhlCnN0YXRpYyBhbmFseXplciBjaGVja3MsIHJld3JpdGUg
dGhlIHdoaWxlIGxvb3BzIG9uIGxpc3RzIHdpdGggdGhlIHNhZmUKbGlzdCBpdGVyYXRvci4KClNp
Z25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogbGlidWJ1cy1y
ZXEuYyB8IDYgKystLS0tCiBsaWJ1YnVzLmMgICAgIHwgOCArKysrKy0tLQogdWJ1c2RfZXZlbnQu
YyB8IDUgKystLS0KIHVidXNkX29iai5jICAgfCA1ICsrLS0tCiB1YnVzZF9wcm90by5jIHwgNiAr
KystLS0KIDUgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvbGlidWJ1cy1yZXEuYyBiL2xpYnVidXMtcmVxLmMKaW5kZXggOTc3ODVh
MWUyNGNkLi5mZDlhNTQ4ODM5ZTQgMTAwNjQ0Ci0tLSBhL2xpYnVidXMtcmVxLmMKKysrIGIvbGli
dWJ1cy1yZXEuYwpAQCAtNDAsMTEgKzQwLDkgQEAgc3RhdGljIHZvaWQgcmVxX2RhdGFfY2Ioc3Ry
dWN0IHVidXNfcmVxdWVzdCAqcmVxLCBpbnQgdHlwZSwgc3RydWN0IGJsb2JfYXR0ciAqZGEKIAog
c3RhdGljIHZvaWQgX191YnVzX3Byb2Nlc3NfcmVxX2RhdGEoc3RydWN0IHVidXNfcmVxdWVzdCAq
cmVxKQogewotCXN0cnVjdCB1YnVzX3BlbmRpbmdfZGF0YSAqZGF0YTsKKwlzdHJ1Y3QgdWJ1c19w
ZW5kaW5nX2RhdGEgKmRhdGEsICp0bXA7CiAKLQl3aGlsZSAoIWxpc3RfZW1wdHkoJnJlcS0+cGVu
ZGluZykpIHsKLQkJZGF0YSA9IGxpc3RfZmlyc3RfZW50cnkoJnJlcS0+cGVuZGluZywKLQkJCXN0
cnVjdCB1YnVzX3BlbmRpbmdfZGF0YSwgbGlzdCk7CisJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZl
KGRhdGEsIHRtcCwgJnJlcS0+cGVuZGluZywgbGlzdCkgewogCQlsaXN0X2RlbCgmZGF0YS0+bGlz
dCk7CiAJCWlmICghcmVxLT5jYW5jZWxsZWQpCiAJCQlyZXFfZGF0YV9jYihyZXEsIGRhdGEtPnR5
cGUsIGRhdGEtPmRhdGEpOwpkaWZmIC0tZ2l0IGEvbGlidWJ1cy5jIGIvbGlidWJ1cy5jCmluZGV4
IDg0NmFlODNiY2MxMi4uYjQwNTg5MTQxNmMyIDEwMDY0NAotLS0gYS9saWJ1YnVzLmMKKysrIGIv
bGlidWJ1cy5jCkBAIC0xMTUsMTAgKzExNSwxMiBAQCB1YnVzX3Byb2Nlc3NfbXNnKHN0cnVjdCB1
YnVzX2NvbnRleHQgKmN0eCwgc3RydWN0IHVidXNfbXNnaGRyX2J1ZiAqYnVmLCBpbnQgZmQpCiBz
dGF0aWMgdm9pZCB1YnVzX3Byb2Nlc3NfcGVuZGluZ19tc2coc3RydWN0IHVsb29wX3RpbWVvdXQg
KnRpbWVvdXQpCiB7CiAJc3RydWN0IHVidXNfY29udGV4dCAqY3R4ID0gY29udGFpbmVyX29mKHRp
bWVvdXQsIHN0cnVjdCB1YnVzX2NvbnRleHQsIHBlbmRpbmdfdGltZXIpOwotCXN0cnVjdCB1YnVz
X3BlbmRpbmdfbXNnICpwZW5kaW5nOworCXN0cnVjdCB1YnVzX3BlbmRpbmdfbXNnICpwZW5kaW5n
LCAqdG1wOworCisJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBlbmRpbmcsIHRtcCwgJmN0eC0+
cGVuZGluZywgbGlzdCkgeworCQlpZiAoY3R4LT5zdGFja19kZXB0aCkKKwkJCWJyZWFrOwogCi0J
d2hpbGUgKCFjdHgtPnN0YWNrX2RlcHRoICYmICFsaXN0X2VtcHR5KCZjdHgtPnBlbmRpbmcpKSB7
Ci0JCXBlbmRpbmcgPSBsaXN0X2ZpcnN0X2VudHJ5KCZjdHgtPnBlbmRpbmcsIHN0cnVjdCB1YnVz
X3BlbmRpbmdfbXNnLCBsaXN0KTsKIAkJbGlzdF9kZWwoJnBlbmRpbmctPmxpc3QpOwogCQl1YnVz
X3Byb2Nlc3NfbXNnKGN0eCwgJnBlbmRpbmctPmhkciwgLTEpOwogCQlmcmVlKHBlbmRpbmcpOwpk
aWZmIC0tZ2l0IGEvdWJ1c2RfZXZlbnQuYyBiL3VidXNkX2V2ZW50LmMKaW5kZXggZDM2YmNiNzNk
ZGRhLi5lZjQzM2Y4MWE3MWUgMTAwNjQ0Ci0tLSBhL3VidXNkX2V2ZW50LmMKKysrIGIvdWJ1c2Rf
ZXZlbnQuYwpAQCAtMzUsMTAgKzM1LDkgQEAgc3RhdGljIHZvaWQgdWJ1c2RfZGVsZXRlX2V2ZW50
X3NvdXJjZShzdHJ1Y3QgZXZlbnRfc291cmNlICpldnMpCiAKIHZvaWQgdWJ1c2RfZXZlbnRfY2xl
YW51cF9vYmplY3Qoc3RydWN0IHVidXNfb2JqZWN0ICpvYmopCiB7Ci0Jc3RydWN0IGV2ZW50X3Nv
dXJjZSAqZXY7CisJc3RydWN0IGV2ZW50X3NvdXJjZSAqZXYsICp0bXA7CiAKLQl3aGlsZSAoIWxp
c3RfZW1wdHkoJm9iai0+ZXZlbnRzKSkgewotCQlldiA9IGxpc3RfZmlyc3RfZW50cnkoJm9iai0+
ZXZlbnRzLCBzdHJ1Y3QgZXZlbnRfc291cmNlLCBsaXN0KTsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUoZXYsIHRtcCwgJm9iai0+ZXZlbnRzLCBsaXN0KSB7CiAJCXVidXNkX2RlbGV0ZV9ldmVu
dF9zb3VyY2UoZXYpOwogCX0KIH0KZGlmZiAtLWdpdCBhL3VidXNkX29iai5jIGIvdWJ1c2Rfb2Jq
LmMKaW5kZXggMGM5Y2I5YWU4MjA4Li5kZDQ0ODgyZTA4ZDUgMTAwNjQ0Ci0tLSBhL3VidXNkX29i
ai5jCisrKyBiL3VidXNkX29iai5jCkBAIC0yMCwxMyArMjAsMTIgQEAgc3RydWN0IGF2bF90cmVl
IHBhdGg7CiAKIHN0YXRpYyB2b2lkIHVidXNfdW5yZWZfb2JqZWN0X3R5cGUoc3RydWN0IHVidXNf
b2JqZWN0X3R5cGUgKnR5cGUpCiB7Ci0Jc3RydWN0IHVidXNfbWV0aG9kICptOworCXN0cnVjdCB1
YnVzX21ldGhvZCAqbSwgKnRtcDsKIAogCWlmICgtLXR5cGUtPnJlZmNvdW50ID4gMCkKIAkJcmV0
dXJuOwogCi0Jd2hpbGUgKCFsaXN0X2VtcHR5KCZ0eXBlLT5tZXRob2RzKSkgewotCQltID0gbGlz
dF9maXJzdF9lbnRyeSgmdHlwZS0+bWV0aG9kcywgc3RydWN0IHVidXNfbWV0aG9kLCBsaXN0KTsK
KwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUobSwgdG1wLCAmdHlwZS0+bWV0aG9kcywgbGlzdCkg
ewogCQlsaXN0X2RlbCgmbS0+bGlzdCk7CiAJCWZyZWUobSk7CiAJfQpkaWZmIC0tZ2l0IGEvdWJ1
c2RfcHJvdG8uYyBiL3VidXNkX3Byb3RvLmMKaW5kZXggMmQwNGI1YTdkYTZlLi40ZGQ4OWRkYjQ5
MzkgMTAwNjQ0Ci0tLSBhL3VidXNkX3Byb3RvLmMKKysrIGIvdWJ1c2RfcHJvdG8uYwpAQCAtNTE5
LDEyICs1MTksMTIgQEAgZnJlZToKIAogdm9pZCB1YnVzZF9wcm90b19mcmVlX2NsaWVudChzdHJ1
Y3QgdWJ1c19jbGllbnQgKmNsKQogewotCXN0cnVjdCB1YnVzX29iamVjdCAqb2JqOworCXN0cnVj
dCB1YnVzX29iamVjdCAqb2JqLCAqdG1wOwogCi0Jd2hpbGUgKCFsaXN0X2VtcHR5KCZjbC0+b2Jq
ZWN0cykpIHsKLQkJb2JqID0gbGlzdF9maXJzdF9lbnRyeSgmY2wtPm9iamVjdHMsIHN0cnVjdCB1
YnVzX29iamVjdCwgbGlzdCk7CisJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKG9iaiwgdG1wLCAm
Y2wtPm9iamVjdHMsIGxpc3QpIHsKIAkJdWJ1c2RfZnJlZV9vYmplY3Qob2JqKTsKIAl9CisKIAl1
YnVzX21zZ19mcmVlKGNsLT5yZXRtc2cpOwogCWJsb2JfYnVmX2ZyZWUoJmNsLT5iKTsKIAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
