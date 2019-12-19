Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB19B127031
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7ZOkThDTNv13txCbxQ6iElZhstfvdoYfTK0tsamx8c=; b=fWTvdoD2i4l326
	O/CImDRTsEOW/cksXvc9DshZr28e2EEz15nyeLmIqFFiE/niMTfbPrmkPK0Z33YssOd+x3Wa0VP43
	BZEABnbEGdyNr2gtKLCNPGM+s9DbiquiUAASXPEL79hkZ+eCJsqsGTTetFKUfK1kOZg60xOshlRvW
	po0inzbgAzjp4YNSKM2uE4oPXy1XqClnbu53TKku0+foeNizWK29O55iuSNooxazuEtyhbe/2TY5R
	tvcFQR+khryPfc+PTATChQViefLTNGvmQtILAAc92ACPXzcGqlcsYzpzfBWtWZj3PVoYUepR0/quX
	RtoO8SfmY35rEmind9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3ru-00070p-7F; Thu, 19 Dec 2019 22:02:02 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3oq-0000tc-Hd
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 92A4E4B4F;
 Thu, 19 Dec 2019 22:58:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c465e2b5;
 Thu, 19 Dec 2019 22:58:36 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:27 +0100
Message-Id: <20191219215836.21773-12-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135852_909021_E889E137 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libubox 11/20] blob: fix OOB access in
 blob_check_type
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

Rm91bmQgYnkgZnV6emVyOgoKIEVSUk9SOiBBZGRyZXNzU2FuaXRpemVyOiBTRUdWIG9uIHVua25v
d24gYWRkcmVzcyAweDYwMjEwMDAwMDQ1NQogVGhlIHNpZ25hbCBpcyBjYXVzZWQgYnkgYSBSRUFE
IG1lbW9yeSBhY2Nlc3MuCiAgICAgIzAgaW4gYmxvYl9jaGVja190eXBlIGJsb2IuYzoyMTQ6NDMK
ICAgICAjMSBpbiBibG9iX3BhcnNlX2F0dHIgYmxvYi5jOjIzNDo5CiAgICAgIzIgaW4gYmxvYl9w
YXJzZV91bnRydXN0ZWQgYmxvYi5jOjI3MjoxMgogICAgICMzIGluIGZ1enpfYmxvYl9wYXJzZSB0
ZXN0cy9mdXp6ZXIvdGVzdC1ibG9iLXBhcnNlLWZ1enplci5jOjM0OjIKICAgICAjNCBpbiBMTFZN
RnV6emVyVGVzdE9uZUlucHV0IHRlc3RzL2Z1enplci90ZXN0LWJsb2ItcGFyc2UtZnV6emVyLmM6
Mzk6MgoKQ2F1c2VkIGJ5IGZvbGxvd2luZyBsaW5lOgoKCWlmICh0eXBlID09IEJMT0JfQVRUUl9T
VFJJTkcgJiYgZGF0YVtsZW4gLSAxXSAhPSAwKQoKd2hlcmUgbGVuIHdhcyBwb2ludGluZyBvdXRz
aWRlIG9mIHRoZSBkYXRhIGJ1ZmZlci4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Ci0tLQogYmxvYi5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDIzICsrKysrKysrKysrKysrLS0tLQogdGVzdHMvY3JhbS90ZXN0X2Jsb2JfcGFy
c2UudCAgICAgICAgICAgICAgICAgIHwgICAyICsrCiAuLi5oLTMzMzc1N2IyMDNhNDQ3NTFkMzUz
NWYyNGIwNWY0NjcxODNhOTZkMDkgfCBCaW4gMCAtPiAxMCBieXRlcwogMyBmaWxlcyBjaGFuZ2Vk
LCAyMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRl
c3RzL2Z1enovY29ycHVzL2NyYXNoLTMzMzc1N2IyMDNhNDQ3NTFkMzUzNWYyNGIwNWY0NjcxODNh
OTZkMDkKCmRpZmYgLS1naXQgYS9ibG9iLmMgYi9ibG9iLmMKaW5kZXggZGM5MDhkOWVhNzQ1Li41
MjhlNzE3NjE1ZDYgMTAwNjQ0Ci0tLSBhL2Jsb2IuYworKysgYi9ibG9iLmMKQEAgLTIxOCwyMCAr
MjE4LDMzIEBAIGJsb2JfY2hlY2tfdHlwZShjb25zdCB2b2lkICpwdHIsIHVuc2lnbmVkIGludCBs
ZW4sIGludCB0eXBlKQogfQogCiBzdGF0aWMgaW50Ci1ibG9iX3BhcnNlX2F0dHIoc3RydWN0IGJs
b2JfYXR0ciAqYXR0ciwgc3RydWN0IGJsb2JfYXR0ciAqKmRhdGEsIGNvbnN0IHN0cnVjdCBibG9i
X2F0dHJfaW5mbyAqaW5mbywgaW50IG1heCkKK2Jsb2JfcGFyc2VfYXR0cihzdHJ1Y3QgYmxvYl9h
dHRyICphdHRyLCBzaXplX3QgYXR0cl9sZW4sIHN0cnVjdCBibG9iX2F0dHIgKipkYXRhLCBjb25z
dCBzdHJ1Y3QgYmxvYl9hdHRyX2luZm8gKmluZm8sIGludCBtYXgpCiB7CisJaW50IGlkOworCXNp
emVfdCBsZW47CiAJaW50IGZvdW5kID0gMDsKLQlpbnQgaWQgPSBibG9iX2lkKGF0dHIpOwotCXNp
emVfdCBsZW4gPSBibG9iX2xlbihhdHRyKTsKKwlzaXplX3QgZGF0YV9sZW47CiAKKwlpZiAoIWF0
dHIgfHwgYXR0cl9sZW4gPCBzaXplb2Yoc3RydWN0IGJsb2JfYXR0cikpCisJCXJldHVybiAwOwor
CisJaWQgPSBibG9iX2lkKGF0dHIpOwogCWlmIChpZCA+PSBtYXgpCiAJCXJldHVybiAwOwogCisJ
bGVuID0gYmxvYl9yYXdfbGVuKGF0dHIpOworCWlmIChsZW4gPiBhdHRyX2xlbiB8fCBsZW4gPCBz
aXplb2Yoc3RydWN0IGJsb2JfYXR0cikpCisJCXJldHVybiAwOworCisJZGF0YV9sZW4gPSBibG9i
X2xlbihhdHRyKTsKKwlpZiAoZGF0YV9sZW4gPiBsZW4pCisJCXJldHVybiAwOworCiAJaWYgKGlu
Zm8pIHsKIAkJaW50IHR5cGUgPSBpbmZvW2lkXS50eXBlOwogCiAJCWlmICh0eXBlIDwgQkxPQl9B
VFRSX0xBU1QpIHsKLQkJCWlmICghYmxvYl9jaGVja190eXBlKGJsb2JfZGF0YShhdHRyKSwgbGVu
LCB0eXBlKSkKKwkJCWlmICghYmxvYl9jaGVja190eXBlKGJsb2JfZGF0YShhdHRyKSwgZGF0YV9s
ZW4sIHR5cGUpKQogCQkJCXJldHVybiAwOwogCQl9CiAKQEAgLTI4NSw3ICsyOTgsNyBAQCBibG9i
X3BhcnNlKHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIHN0cnVjdCBibG9iX2F0dHIgKipkYXRhLCBj
b25zdCBzdHJ1Y3QgYmxvYl9hdAogCiAJbWVtc2V0KGRhdGEsIDAsIHNpemVvZihzdHJ1Y3QgYmxv
Yl9hdHRyICopICogbWF4KTsKIAlibG9iX2Zvcl9lYWNoX2F0dHIocG9zLCBhdHRyLCByZW0pIHsK
LQkJZm91bmQgKz0gYmxvYl9wYXJzZV9hdHRyKHBvcywgZGF0YSwgaW5mbywgbWF4KTsKKwkJZm91
bmQgKz0gYmxvYl9wYXJzZV9hdHRyKHBvcywgcmVtLCBkYXRhLCBpbmZvLCBtYXgpOwogCX0KIAog
CXJldHVybiBmb3VuZDsKZGlmZiAtLWdpdCBhL3Rlc3RzL2NyYW0vdGVzdF9ibG9iX3BhcnNlLnQg
Yi90ZXN0cy9jcmFtL3Rlc3RfYmxvYl9wYXJzZS50CmluZGV4IDc3ZDhiZGQ4NThiNi4uMWZkNjBi
YzcxMTIyIDEwMDY0NAotLS0gYS90ZXN0cy9jcmFtL3Rlc3RfYmxvYl9wYXJzZS50CisrKyBiL3Rl
c3RzL2NyYW0vdGVzdF9ibG9iX3BhcnNlLnQKQEAgLTU2LDYgKzU2LDggQEAgY2hlY2sgdGhhdCBi
bG9iX3BhcnNlIGlzIHByb2R1Y2luZyBleHBlY3RlZCByZXN1bHRzOgogICBjYW5ub3QgcGFyc2Ug
Y2VydCBjNDJhYzFjNDZmMWQ0ZTIxMWM3MzVjYzdkZmFkNGZmODM5MTExMGU5CiAgIGNhbm5vdCBw
YXJzZSBjZXJ0IGNyYXNoLTFiOGZiMWJlNDVkYjNhZmY3Njk5MTAwZjQ5N2ZiNzQxMzhmM2RmNGYK
ICAgY2Fubm90IHBhcnNlIGNlcnQgY3Jhc2gtMWI4ZmIxYmU0NWRiM2FmZjc2OTkxMDBmNDk3ZmI3
NDEzOGYzZGY0ZgorICBjYW5ub3QgcGFyc2UgY2VydCBjcmFzaC0zMzM3NTdiMjAzYTQ0NzUxZDM1
MzVmMjRiMDVmNDY3MTgzYTk2ZDA5CisgIGNhbm5vdCBwYXJzZSBjZXJ0IGNyYXNoLTMzMzc1N2Iy
MDNhNDQ3NTFkMzUzNWYyNGIwNWY0NjcxODNhOTZkMDkKICAgY2Fubm90IHBhcnNlIGNlcnQgY3Jh
c2gtNGM0ZDJjM2M5YWRlNWRhOTM0NzUzNGUyOTAzMDVjM2I5NzYwZjYyNwogICBjYW5ub3QgcGFy
c2UgY2VydCBjcmFzaC00YzRkMmMzYzlhZGU1ZGE5MzQ3NTM0ZTI5MDMwNWMzYjk3NjBmNjI3CiAg
IGNhbm5vdCBwYXJzZSBjZXJ0IGNyYXNoLTVlOTkzN2IxOTdjODhiZjRlN2I3ZWUyNjEyNDU2Y2Fk
NGNiODNmNWIKZGlmZiAtLWdpdCBhL3Rlc3RzL2Z1enovY29ycHVzL2NyYXNoLTMzMzc1N2IyMDNh
NDQ3NTFkMzUzNWYyNGIwNWY0NjcxODNhOTZkMDkgYi90ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC0z
MzM3NTdiMjAzYTQ0NzUxZDM1MzVmMjRiMDVmNDY3MTgzYTk2ZDA5Cm5ldyBmaWxlIG1vZGUgMTAw
NjQ0CmluZGV4IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAuLmI5YTk1
OGUwOGQ0NTdhYWViMDUxMDJiYjBkNjU0NDI4ZmZjYTE2MWUKR0lUIGJpbmFyeSBwYXRjaApsaXRl
cmFsIDEwClJjbVpRelZCbGg2VXw9JDEwMDAyYTA3VT0qCgpsaXRlcmFsIDAKSGNtVj9kMDAwMDEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
