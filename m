Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130DF18A81B
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f6rTij7KWpjxkOXyjIKOxsv1NUF4+mBm8xfJNleb5tI=; b=Hw3uBnHo6QjHMg
	p7BLPu9vYgK/lsEigBDrjOa/IfpqayhE1Hi6oz04OBO1bNaqxJMZZf2AfOsRybRRInYNT+p0NvwgV
	BEr43vWAsVI79nwW+XHD6blN4T7VqPcXumn1GRCakqzrDvceNUv7GtigSbHE+4pucoiD3vDCRQsOy
	xYNdT1swEjlIgNu5/YWWxBHEcfOGCZ7XXQItoWIyFfVU1x1AIpl8K1iVGcFxZ2f86FrMjzTq4BW2i
	F82JHNJUYXjoMGMcuQMFHF+rnCzP9OECHQ3DScid0DQs0gWqVKcNWWdhFK9GRKxeCYE3OWFFj7lLm
	rLWUcKeLqGQSd08c1U/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhAb-0007ZD-Qv; Wed, 18 Mar 2020 22:28:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA4-0006uY-OK
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C38EF4C15;
 Wed, 18 Mar 2020 23:27:36 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2b766cfa;
 Wed, 18 Mar 2020 23:27:23 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:04 +0100
Message-Id: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152740_938348_13CBF97C 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/9] sunxi: add support for Olimex
 A64-Olinuxino
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

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBidW1wcyBzdW54aSdzIFUtQm9vdCB0byBsYXRlc3QgMjAy
MC4wMSByZWxlYXNlIGFuZCBhZGRzCnN1cHBvcnQgZm9yIGE2NC1vbGludXhpbm8gZGV2aWNlLiBU
ZXN0ZWQgb24gNS40LjI0IGtlcm5lbCB3aXRoCkE2NC1PTGludVhpbm8tMUdlNEdXIHZhcmlhbnQg
YnkgYm9vdGluZyBmcm9tIFNEIGNhcmQgYW5kIGVNTUMuCgpDaGVlcnMsCgpQZXRyCgpQZXRyIMWg
dGV0aWFyICg5KToKICB1Ym9vdC1zdW54aTogYnVtcCB0byAyMDIwLjAxCiAgdWJvb3Qtc3VueGk6
IGFkZCBzdXBwb3J0IGZvciBPbGltZXggQTY0LU9saW51eGlubwogIHVib290LXN1bnhpOiBhZGQg
c3VwcG9ydCBmb3IgT2xpbWV4IEE2NC1PbGludXhpbm8gZU1NQwogIHVib290LXN1bnhpOiBhNjQ6
IGFsbG93IGJvb3RpbmcgZGlyZWN0bHkgZnJvbSBlTU1DCiAgc3VueGk6IGE1MzogaW1hZ2U6IG1h
a2UgaXQgRFJZCiAgc3VueGk6IGE1MzogYWRkIHN1cHBvcnQgZm9yIE9saW1leCBBNjQtT2xpbnV4
aW5vCiAgc3VueGk6IGE1MzogYWRkIHN1cHBvcnQgZm9yIE9saW1leCBBNjQtT2xpbnV4aW5vIGVN
TUMKICBtYWM4MDIxMTogcmVhbHRlazogYWRkIHN0YWdpbmcgZHJpdmVyIGZvciBSVEw4NzIzQlMg
U0RJTyBtb2R1bGUKICBsaW51eC1maXJtd2FyZTogYWRkIGZpcm13YXJlIGZvciBSVEw4NzIzQlMg
U0RJTyBtb2R1bGVzCgogcGFja2FnZS9ib290L3Vib290LXN1bnhpL01ha2VmaWxlICAgICAgICAg
ICAgIHwgMjIgKysrKysrLQogLi4uLzAwMy1hZGQtdGhlb2Jyb21hLWEzMS1wYW5nb2xpbi5wYXRj
aCAgICAgIHwgIDQgKy0KIC4uLi9wYXRjaGVzLzA2Mi1BMjAtaW1wcm92ZS1nbWFjLXVwbG9hZC5w
YXRjaCB8ICAyICstCiAuLi4vMDYzLWZpeC1saW1lMi1yZXZLLWFkZC1taWNyZWwtUEhZLnBhdGNo
ICAgfCAxMiArKy0tCiAuLi4xLXN1bjZpLXN5bmMtUExMMS1tdWx0ZGl2LXdpdGgtQm9vdDEucGF0
Y2ggfCAgMiArLQogLi4uLzEwMC1zdW42aS1hbHRlcm5hdGUtb24tVUFSVDIucGF0Y2ggICAgICAg
IHwgIDIgKy0KIC4uLi8xMDEtc3VuNmktc3VwcG9ydC1jb25zb2xlLW9uLVVBUlQyLnBhdGNoICB8
ICA0ICstCiAuLi4yLXN1bnhpLW1ha2VfQ09OU19JTkRFWC1jb25maWd1cmFibGUucGF0Y2ggfCAg
MiArLQogLi4uLWVudmlyb25tZW50LWZvci1kdGMtYmluYXJ5LWxvY2F0aW9uLnBhdGNoIHwgIDIg
Ky0KIC4uLi9wYXRjaGVzLzIxMC1zdW54aS1kZWFjdGl2YXRlLWJpbm1hbi5wYXRjaCB8ICA0ICst
CiAuLi4vcGF0Y2hlcy8yMjEtY29tcGF0aWJsZS1vbGQtZHRjLnBhdGNoICAgICAgfCA1MiAtLS0t
LS0tLS0tLS0tLS0KIC4uLi8yMzAtZGlzYWJsZS1heHAyMDktb24tYTEzLW9saW51eGluby5kaWZm
ICB8ICA4ICstLQogLi4uZ2UtUGktWmVyby1QbHVzLUZpeC1TZENhcmQtZGV0ZWN0aW9uLnBhdGNo
IHwgMjggLS0tLS0tLS0KIC4uLnV4aW5vLWVtbWMtYWRkLWVNTUMtYm9vdC1wYXJ0LWNvbmZpZy5w
YXRjaCB8IDI5ICsrKysrKysrKwogcGFja2FnZS9ib290L3Vib290LXN1bnhpL3VFbnYtYTY0LnR4
dCAgICAgICAgIHwgIDggKystCiBwYWNrYWdlL2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlL3JlYWx0
ZWsubWsgICAgfCAgNyArKwogcGFja2FnZS9rZXJuZWwvbWFjODAyMTEvcmVhbHRlay5tayAgICAg
ICAgICAgIHwgMTkgKysrKystCiAuLi4vYWxsd2lubmVyL3N1bjUwaS1hNjQtb2xpbnV4aW5vLWVt
bWMuZHRzICAgfCAyNSArKysrKysrCiB0YXJnZXQvbGludXgvc3VueGkvaW1hZ2UvY29ydGV4LWE1
My5tayAgICAgICAgfCA2NSArKysrKysrKysrKystLS0tLS0tCiAuLi5uZXItZW5hYmxlLXN1bjUw
aS1hNjQtb2xpbnV4aW5vLWVtbWMucGF0Y2ggfCAyNSArKysrKysrCiAyMCBmaWxlcyBjaGFuZ2Vk
LCAxOTEgaW5zZXJ0aW9ucygrKSwgMTMxIGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0
IHBhY2thZ2UvYm9vdC91Ym9vdC1zdW54aS9wYXRjaGVzLzIyMS1jb21wYXRpYmxlLW9sZC1kdGMu
cGF0Y2gKIGRlbGV0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL2Jvb3QvdWJvb3Qtc3VueGkvcGF0Y2hl
cy8yNDAtc3VuNTBpLWg1LU9yYW5nZS1QaS1aZXJvLVBsdXMtRml4LVNkQ2FyZC1kZXRlY3Rpb24u
cGF0Y2gKIGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL2Jvb3QvdWJvb3Qtc3VueGkvcGF0Y2hl
cy8yNjAtY29uZmlncy1hNjQtb2xpbnV4aW5vLWVtbWMtYWRkLWVNTUMtYm9vdC1wYXJ0LWNvbmZp
Zy5wYXRjaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9zdW54aS9maWxlcy00LjE5
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtb2xpbnV4aW5vLWVtbWMu
ZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L3N1bnhpL3BhdGNoZXMtNC4xOS80
MTAtYXJtNjQtZHRzLWFsbHdpbm5lci1lbmFibGUtc3VuNTBpLWE2NC1vbGludXhpbm8tZW1tYy5w
YXRjaAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
