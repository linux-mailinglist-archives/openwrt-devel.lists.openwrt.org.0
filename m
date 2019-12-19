Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C4B127029
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjXWjrg0NozVfUHNZLScjpc/BcmsusYaSP3UDA4muiE=; b=Mi678JVk4KKClQ
	RbVjStWiCjUdHka/vkcOu3Ad87jGXUyaYnFq+G7cW3VRhpZiKS+x7Qpm65WwOiTIuJ9ctA7y8WB6Y
	NZ8IczpXB2tFGJ4p5Co1eG6fS+PIwhFYuPUic3EZxLVAqO099mvg3iFsEKxVbBqOBbor5nUv/zXWp
	rk9G98WMJI1KhaZWcT8W754XIJzEi03P9fgFHyIe66VATH1HsgVwNmJ8QJ/m8FDN/85nZkgMnZysH
	6dcFhUXbLfuOR6ufQGCDMhz19taUloKy0H2g7F1w7TyyHyDG+IqMvniW3aSDMpzJOFJm/7380bOuM
	BE4VI/hIBu6Ucq+bUIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3ql-0004rk-GA; Thu, 19 Dec 2019 22:00:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3oq-0000ta-Eo
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 47C494B4C;
 Thu, 19 Dec 2019 22:58:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id dafc6f3d;
 Thu, 19 Dec 2019 22:58:35 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:25 +0100
Message-Id: <20191219215836.21773-10-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135852_706390_0AF8929D 
X-CRM114-Status: UNSURE (   9.47  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 09/20] blob: introduce
 blob_parse_untrusted
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

YmxvYl9wYXJzZSBjYW4gYmUgb25seSB1c2VkIG9uIHRydXN0ZWQgaW5wdXQgYXMgaXQgaGFzIG5v
IHBvc3NpYmlsaXR5IHRvCmNoZWNrIHRoZSBsZW5ndGggb2YgdGhlIHByb3ZpZGVkIGlucHV0IGJ1
ZmZlciwgd2hpY2ggbWlnaHQgbGVhZCB0bwp1bmRlZmluZWQgYmVoYXZpb3VyIGFuZC9vciBjcmFz
aGVzIHdoZW4gc3VwcGxpZWQgd2l0aCBtYWxmb3JtZWQsCmNvcnJ1cHRlZCBvciBvdGhlcndpc2Ug
c3BlY2lhbGx5IGNyYWZ0ZWQgaW5wdXQuCgpTbyB0aGlzIGludHJvZHVjZXMgYmxvYl9wYXJzZV91
bnRydXN0ZWQgdmFyaWFudCB3aGljaCBleHBlY3RzIGFkZGl0aW9uYWwKaW5wdXQgYnVmZmVyIGxl
bmd0aCBhcmd1bWVudCBhbmQgdGh1cyBzaG91bGQgYmUgYWJsZSB0byBwcm9jZXNzIGFsc28KaW5w
dXRzIGZyb20gdW50cnVzdGVkIHNvdXJjZXMuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFy
IDx5bmV6ekB0cnVlLmN6PgotLS0KIGJsb2IuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysr
KwogYmxvYi5oIHwgIDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYmxvYi5jIGIvYmxvYi5jCmluZGV4IGVlOTM4OTRiOWU2Zi4uZGM5MDhk
OWVhNzQ1IDEwMDY0NAotLS0gYS9ibG9iLmMKKysrIGIvYmxvYi5jCkBAIC0yNTIsNiArMjUyLDMw
IEBAIGJsb2JfcGFyc2VfYXR0cihzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBzdHJ1Y3QgYmxvYl9h
dHRyICoqZGF0YSwgY29uc3Qgc3RydWN0IGJsCiAJcmV0dXJuIGZvdW5kOwogfQogCitpbnQKK2Js
b2JfcGFyc2VfdW50cnVzdGVkKHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIHNpemVfdCBhdHRyX2xl
biwgc3RydWN0IGJsb2JfYXR0ciAqKmRhdGEsIGNvbnN0IHN0cnVjdCBibG9iX2F0dHJfaW5mbyAq
aW5mbywgaW50IG1heCkKK3sKKwlzdHJ1Y3QgYmxvYl9hdHRyICpwb3M7CisJc2l6ZV90IGxlbiA9
IDA7CisJaW50IGZvdW5kID0gMDsKKwlzaXplX3QgcmVtOworCisJaWYgKCFhdHRyIHx8IGF0dHJf
bGVuIDwgc2l6ZW9mKHN0cnVjdCBibG9iX2F0dHIpKQorCQlyZXR1cm4gMDsKKworCWxlbiA9IGJs
b2JfcmF3X2xlbihhdHRyKTsKKwlpZiAobGVuICE9IGF0dHJfbGVuKQorCQlyZXR1cm4gMDsKKwor
CW1lbXNldChkYXRhLCAwLCBzaXplb2Yoc3RydWN0IGJsb2JfYXR0ciAqKSAqIG1heCk7CisJYmxv
Yl9mb3JfZWFjaF9hdHRyX2xlbihwb3MsIGF0dHIsIGxlbiwgcmVtKSB7CisJCWZvdW5kICs9IGJs
b2JfcGFyc2VfYXR0cihwb3MsIHJlbSwgZGF0YSwgaW5mbywgbWF4KTsKKwl9CisKKwlyZXR1cm4g
Zm91bmQ7Cit9CisKKy8qIHVzZSBvbmx5IG9uIHRydXN0ZWQgaW5wdXQsIG90aGVyd2lzZSBjb25z
aWRlciBibG9iX3BhcnNlX3VudHJ1c3RlZCAqLwogaW50CiBibG9iX3BhcnNlKHN0cnVjdCBibG9i
X2F0dHIgKmF0dHIsIHN0cnVjdCBibG9iX2F0dHIgKipkYXRhLCBjb25zdCBzdHJ1Y3QgYmxvYl9h
dHRyX2luZm8gKmluZm8sIGludCBtYXgpCiB7CmRpZmYgLS1naXQgYS9ibG9iLmggYi9ibG9iLmgK
aW5kZXggZDM0NjUyMjI5YjU5Li5hZjAzMzYwN2UzMDkgMTAwNjQ0Ci0tLSBhL2Jsb2IuaAorKysg
Yi9ibG9iLmgKQEAgLTE5OSw2ICsxOTksNyBAQCBleHRlcm4gdm9pZCBibG9iX25lc3RfZW5kKHN0
cnVjdCBibG9iX2J1ZiAqYnVmLCB2b2lkICpjb29raWUpOwogZXh0ZXJuIHN0cnVjdCBibG9iX2F0
dHIgKmJsb2JfcHV0KHN0cnVjdCBibG9iX2J1ZiAqYnVmLCBpbnQgaWQsIGNvbnN0IHZvaWQgKnB0
ciwgdW5zaWduZWQgaW50IGxlbik7CiBleHRlcm4gYm9vbCBibG9iX2NoZWNrX3R5cGUoY29uc3Qg
dm9pZCAqcHRyLCB1bnNpZ25lZCBpbnQgbGVuLCBpbnQgdHlwZSk7CiBleHRlcm4gaW50IGJsb2Jf
cGFyc2Uoc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgc3RydWN0IGJsb2JfYXR0ciAqKmRhdGEsIGNv
bnN0IHN0cnVjdCBibG9iX2F0dHJfaW5mbyAqaW5mbywgaW50IG1heCk7CitleHRlcm4gaW50IGJs
b2JfcGFyc2VfdW50cnVzdGVkKHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIHNpemVfdCBhdHRyX2xl
biwgc3RydWN0IGJsb2JfYXR0ciAqKmRhdGEsIGNvbnN0IHN0cnVjdCBibG9iX2F0dHJfaW5mbyAq
aW5mbywgaW50IG1heCk7CiBleHRlcm4gc3RydWN0IGJsb2JfYXR0ciAqYmxvYl9tZW1kdXAoc3Ry
dWN0IGJsb2JfYXR0ciAqYXR0cik7CiBleHRlcm4gc3RydWN0IGJsb2JfYXR0ciAqYmxvYl9wdXRf
cmF3KHN0cnVjdCBibG9iX2J1ZiAqYnVmLCBjb25zdCB2b2lkICpwdHIsIHVuc2lnbmVkIGludCBs
ZW4pOwogCkBAIC0yNTQsNSArMjU1LDExIEBAIGJsb2JfcHV0X3U2NChzdHJ1Y3QgYmxvYl9idWYg
KmJ1ZiwgaW50IGlkLCB1aW50NjRfdCB2YWwpCiAJICAgICAoYmxvYl9wYWRfbGVuKHBvcykgPj0g
c2l6ZW9mKHN0cnVjdCBibG9iX2F0dHIpKTsgXAogCSAgICAgcmVtIC09IGJsb2JfcGFkX2xlbihw
b3MpLCBwb3MgPSBibG9iX25leHQocG9zKSkKIAorI2RlZmluZSBibG9iX2Zvcl9lYWNoX2F0dHJf
bGVuKHBvcywgYXR0ciwgYXR0cl9sZW4sIHJlbSkgXAorCWZvciAocmVtID0gYXR0ciA/IGJsb2Jf
bGVuKGF0dHIpIDogMCwgXAorCSAgICAgcG9zID0gKHN0cnVjdCBibG9iX2F0dHIgKikgKGF0dHIg
PyBibG9iX2RhdGEoYXR0cikgOiBOVUxMKTsgXAorCSAgICAgcmVtID49IHNpemVvZihzdHJ1Y3Qg
YmxvYl9hdHRyKSAmJiByZW0gPCBhdHRyX2xlbiAmJiAoYmxvYl9wYWRfbGVuKHBvcykgPD0gcmVt
KSAmJiBcCisJICAgICAoYmxvYl9wYWRfbGVuKHBvcykgPj0gc2l6ZW9mKHN0cnVjdCBibG9iX2F0
dHIpKTsgXAorCSAgICAgcmVtIC09IGJsb2JfcGFkX2xlbihwb3MpLCBwb3MgPSBibG9iX25leHQo
cG9zKSkKIAogI2VuZGlmCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
