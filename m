Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262A920053A
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 11:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gpyOgc+UGA0+9/h0GVDOUpPEqU5UmoMufFNE6iiPSHo=; b=BKrlsjw5XuomV8
	9GlYURch8uq1zCsGZ3k9B3XdqfsUDkMYOBJ6ahRrLtfJWlPjEKK9rzQH5XRsUKq40bkm6NhgBNest
	1jg5Hi/GqOOl6lLxdFbzIh1xbBxRH7og6lY7v4RJnpQuGIECRPyBbAGNZpKX6ziRa2NbsiajZBWo8
	L2TF5+guq9mB/iWHi6i7umOZsJteQe2RIUSlrA6XsKbtLpMHp60n2FjpmxBY3ClRxIpXqmwNFxDuP
	LRij9cU8P3j+FiMHFAIEvPapaAKg6KDU4mogxVSWI4kBld8EM2U3ouCazUY1iiNSHLSRsx+cstcJZ
	fPvtrzk/RWQJIwp5eZ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDPt-000659-1s; Fri, 19 Jun 2020 09:34:33 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDNx-0004KR-5Z
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 09:32:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B90E51880B;
 Fri, 19 Jun 2020 11:32:24 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 40aac605;
 Fri, 19 Jun 2020 11:32:07 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 19 Jun 2020 11:32:15 +0200
Message-Id: <20200619093215.28273-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_023233_373907_FC32B711 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: image: fix initramfs for safeloader
 devices
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

Q3VycmVudGx5IGl0J3Mgbm90IHBvc3NpYmxlIHRvIHRmdHBib290IGluaXRyYW1mcyBpbWFnZSBv
biBhcmNoZXItYzctdjUKYXMgdGhlIGltYWdlIGNvbnRhaW5zIHRwbGluay12MS1oZWFkZXIgd2hp
Y2ggbGVhZHMgdG86CgogYXRoPiBib290bQogIyMgQm9vdGluZyBpbWFnZSBhdCA4MTAwMDAwMCAu
Li4KIEJhZCBNYWdpYyBOdW1iZXIKCmFzIFUtQm9vdCBleHBlY3QgdUltYWdlIHdyYXBwZWQgaW1h
Z2UuIFRoaXMgaXMgY2F1c2VkIGJ5IGZvbGxvd2luZwppbmhlcml0YW5jZSBpc3N1ZToKCiAgZGVm
aW5lIERldmljZS9Jbml0CiAgICBLRVJORUxfSU5JVFJBTUZTID0gJCQoS0VSTkVMKQoKICBkZWZp
bmUgRGV2aWNlL3RwbGluay12MQogICAgS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRi
IHwgbHptYQogICAgS0VSTkVMX0lOSVRSQU1GUyA6PSBrZXJuZWwtYmluIHwgYXBwZW5kLWR0YiB8
IGx6bWEgfCB0cGxpbmstdjEtaGVhZGVyCgogIGRlZmluZSBEZXZpY2UvdHBsaW5rLXNhZmVsb2Fk
ZXIKICAgICQoRGV2aWNlL3RwbGluay12MSkKCiAgZGVmaW5lIERldmljZS90cGxpbmstc2FmZWxv
YWRlci11aW1hZ2UKICAgICQoRGV2aWNlL3RwbGluay1zYWZlbG9hZGVyKQogICAgS0VSTkVMIDo9
IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IHVJbWFnZUFyY2hlciBsem1hCgogIGRl
ZmluZSBEZXZpY2UvdHBsaW5rX2FyY2hlci1jNy12NQogICAgJChEZXZpY2UvdHBsaW5rLXNhZmVs
b2FkZXItdWltYWdlKQoKd2hlcmUgdHBsaW5rLXYxIGRlZmluZXMgS0VSTkVMX0lOSVRSQU1GUyB3
aXRoIHRwbGluay12MS1oZWFkZXIgYW5kIGl0J3MKdGhlbiB1c2VkIGJ5IGFsbCBkZXZpY2VzIGlu
aGVyaXRpbmcgZnJvbSB0cGxpbmstc2FmZWxvYWRlci4gRml4IHRoaXMgYnkKb3ZlcnJpZGluZyBL
RVJORUxfSU5JVFJBTUZTIHRvIEtFUk5FTCB2YXJpYWJsZSBhZ2Fpbi4KClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4L2F0aDc5L2lt
YWdlL2NvbW1vbi10cC1saW5rLm1rIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvY29tbW9uLXRwLWxp
bmsubWsgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvY29tbW9uLXRwLWxpbmsubWsKaW5kZXgg
MzI4ZWFhZWQzMDU2Li44MWE1NTdkZjQ4NzEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hdGg3
OS9pbWFnZS9jb21tb24tdHAtbGluay5taworKysgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2Uv
Y29tbW9uLXRwLWxpbmsubWsKQEAgLTc4LDYgKzc4LDcgQEAgZGVmaW5lIERldmljZS90cGxpbmst
c2FmZWxvYWRlcgogICAkKERldmljZS90cGxpbmstdjEpCiAgIFRQTElOS19IV1JFViA6PSAweDAK
ICAgS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IHRwbGluay12MS1o
ZWFkZXIgLU8KKyAgS0VSTkVMX0lOSVRSQU1GUyA6PSAkJChLRVJORUwpCiAgIElNQUdFL3N5c3Vw
Z3JhZGUuYmluIDo9IGFwcGVuZC1yb290ZnMgfCB0cGxpbmstc2FmZWxvYWRlciBzeXN1cGdyYWRl
IHwgXAogCWFwcGVuZC1tZXRhZGF0YSB8IGNoZWNrLXNpemUKICAgSU1BR0UvZmFjdG9yeS5iaW4g
Oj0gYXBwZW5kLXJvb3RmcyB8IHRwbGluay1zYWZlbG9hZGVyIGZhY3RvcnkKQEAgLTg2LDYgKzg3
LDcgQEAgZW5kZWYKIGRlZmluZSBEZXZpY2UvdHBsaW5rLXNhZmVsb2FkZXItdWltYWdlCiAgICQo
RGV2aWNlL3RwbGluay1zYWZlbG9hZGVyKQogICBLRVJORUwgOj0ga2VybmVsLWJpbiB8IGFwcGVu
ZC1kdGIgfCBsem1hIHwgdUltYWdlQXJjaGVyIGx6bWEKKyAgS0VSTkVMX0lOSVRSQU1GUyA6PSAk
JChLRVJORUwpCiBlbmRlZgogCiBkZWZpbmUgRGV2aWNlL3RwbGluay1zYWZlbG9hZGVyLW9rbGkK
QEAgLTk2LDQgKzk4LDUgQEAgZGVmaW5lIERldmljZS90cGxpbmstc2FmZWxvYWRlci1va2xpCiAg
IENPTVBJTEUvbG9hZGVyLSQoMSkuZWxmIDo9IGxvYWRlci1va2xpLWNvbXBpbGUKICAgS0VSTkVM
IDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IHVJbWFnZSBsem1hIC1NIDB4NGY0
YjRjNDkgfCBcCiAJbG9hZGVyLW9rbGkgJCgxKSAxMjI4OAorICBLRVJORUxfSU5JVFJBTUZTIDo9
ICQkKEtFUk5FTCkKIGVuZGVmCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
