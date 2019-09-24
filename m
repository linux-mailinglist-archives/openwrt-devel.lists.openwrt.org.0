Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15784BD34A
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 22:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IC5WF25SA3fSn/6MLYoDBT6kFr/nzSXeE96eSht48h4=; b=TUzJJs3dXcYC/w
	ZSQzcCU9DqalUyfCFWz72q9DKTCQyvyxHAYnIZjWscCiIcGr+rthLs1vQcSFIaYCooHh2w27i9a2+
	BZayHwNyxD210kwZTbb+wzzt6nEg86Lj2hGqK5dwBL+NRlAjeGX1P8RI1pKr0F1xdvhNQE7cJ8+aT
	jxTtocZXtIcUX62omNWlGtbSMHDF43rANH3ly9LJFtFMsqWQjtT2sZGekjDfuYcP74G4pgsZSxkoC
	3PBqYcwly91VCA9GAUT8j9CZWMWbWVE4QyirtrkJ8BT7wzz4MbA1R52nODytKKID/tdsUmEfqeA9u
	1oILx3rDjNnhWQKYPoEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCr5T-0007Cn-D0; Tue, 24 Sep 2019 20:07:03 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCr57-0007CR-7c
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 20:06:42 +0000
Received: by mail-qk1-x743.google.com with SMTP id u184so3141547qkd.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 13:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cdT21Y8682mGRCDUgDcpLG358eNmhQtZgbHJ/OQvBN4=;
 b=BKKjYlV//tCpU8a/GTzrGl6/vVU7TbIaKpKI4TqNpoHX0CMEA8hXvoV+cx7LsR+8Ro
 X4BbRy8VC1cyHtN0KJTE7ezr7QYnenJBryEAU41MvnqVFaBKFeOInr1DhgDkHkM7RoEe
 EzrpvDPSav6KZ58q87f4bFBxi817osYk5sYKg1CWPH3bUx7IMdqUYOJ7QGqEZ12bPiFB
 Z0bLrBlMaAIZba9lOeNRcFPMyjIy8EHFeMz+9UQfBj+r783HnqNQRQmIxKQCKw/Q5FQx
 EgQWfQQv7ZFuaNlAZ0vuoUST8HYpAVWrUjnDavY7776jujvxOG7++ZzXmvHD4v1E2SoG
 IM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cdT21Y8682mGRCDUgDcpLG358eNmhQtZgbHJ/OQvBN4=;
 b=rRzX6ZnSffY79xBY5cZouXQH6VVcV0DGxYYN3R7SsbavWWqSporUqv31yVu66tCfa3
 DRxXXTB8RCyFzRn41UYXTZ9KkIG7yvLCghavOgObFQFHz2wI99ymHDsFIGIycGQ/ppwm
 mNiGFs2OMzlMQY8eLSMXt8VmpqM+0MSiRJoZwxJhKMmD3bIUgHMc67oC5UA5m7fh4S5+
 yghZJ4DKlsC1JfBzRuBPV3O+oLYA1uO3mlHbWLGhy3wLKqjfoLPLKYnVG8UfMNZtC6It
 6H5yYNg9kWbZFtpLxCqWt7tohD0dUpC9IkVtnSmFLipGTuketHOU3phUz1zuMbUsSm4/
 qqLw==
X-Gm-Message-State: APjAAAURfuhWWYXWHqswW4f7VODQGHlAjd6dQVPV9bF1Pn8olnZD+1UE
 SJMaSomsUrb1r6+Z7gvvUP7NXggze1NkPAIyQqw=
X-Google-Smtp-Source: APXvYqyKvGNplNK37+Snfz/ZdqsCcO+RthDOMRIrB/E/zuOqwsgd4Na29TsfKGccCWjIJPVvNwNLwyANOHjjpObWFIY=
X-Received: by 2002:a37:dcc1:: with SMTP id v184mr4521594qki.258.1569355599276; 
 Tue, 24 Sep 2019 13:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190923073539.7493-1-ynezz@true.cz>
 <20190923073937.7890-1-ynezz@true.cz>
In-Reply-To: <20190923073937.7890-1-ynezz@true.cz>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 24 Sep 2019 17:06:28 -0300
Message-ID: <CAPxccB3ZF_E5UXgoha6hqnMcktWqY6N4uS6J7x714CPvC_XW0g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_130641_278205_318778DD 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBpcyBzdGlsbCBmYWlsaW5nIG9uIGdlbnRvby4gIFRoZSBwcm9ibGVtIGlzIHRoYXQgd2hl
bgpzY3JpcHRzL2NvbmZpZy9seGRpYWxvZy9jaGVjay1seGRpYWxvZy5zaCBpcyBydW4sIGl0IHdp
bGwgc3RpbGwgdXNlCnRoZSBzdGFnaW5nX2Rpci9ob3N0L2Jpbi9wa2ctY29uZmlnIHNjcmlwdCB3
aXRob3V0IFNUQUdJTkdfUFJFRklYIHNldC4KU2VlIG15IHN1Z2dlc3Rpb24gYmVsb3cuCgpPbiBN
b24sIFNlcCAyMywgMjAxOSBhdCA0OjM5IEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
IHdyb3RlOgo+Cj4gT24gYSByZWNlbnQgR2VudG9vIExpbnV4IGluc3RhbGxhdGlvbiwgaW52b2tp
bmcgYG1ha2Uga2VybmVsX21lbnVjb25maWdgCj4gaW4gdGhlIGJ1aWxkIHN5c3RlbSBmYWlscywg
d2hlcmVhcyBgbWFrZSBtZW51Y29uZmlnYCBpbiB0aGUga2VybmVsIHRyZWUKPiBhbG9uZSB3b3Jr
cyBhcyBleHBlY3RlZC4KPgo+IFRoaXMgaXMgaGFwcGVuaW5nIGJlY2F1c2UgU1RBR0lOR19QUkVG
SVggaXMgbm90IGRlZmluZWQgd2hlbiBrZXJuZWwncwo+IG1lbnVjb25maWcgdGFyZ2V0IGNhbGxz
IHBrZy1jb25maWcgZnJvbSB0aGUgdG9vbGNoYWluL2hvc3QgYW5kIHRodXMKPiBwa2ctY29uZmln
IHJldHVybnMgYW4gZW1wdHkgdmFsdWUsIGFuZCB0aGUgZmFsbGJhY2sgdmFsdWVzIGluIHRoZSBr
ZXJuZWwKPiBjb25maWcgc2NyaXB0IGFyZSBhcHBsaWVkIGJ1dCB0aG9zZSBhcmUgb2ZmIGFuZCB0
aGUgbGlua2luZyBmYWlscy4KPgo+IFNvbHV0aW9uIGlzIHRvIHVzZSBzeXN0ZW0ncyBwa2ctY29u
ZmlnIGZvciBrZXJuZWxfbWVudWNvbmZpZyB0YXJnZXQgaW4KPiBvcmRlciB0byBwcm92aWRlIHBy
b3BlciBjb21waWxlci9saW5rZXIgZmxhZ3MuCj4KPiBSZWY6IEZTIzI0MjMKPiBDYzogVGhvbWFz
IEFsYmVycyA8dGhvbWFzLmdhbWVpcm9AZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4KPiBjaGFuZ2VzIGluIHYyOgo+Cj4gICog
Zml4ZWQga2VybmVsX25jb25maWcgcGF0aAo+Cj4gIE1ha2VmaWxlICAgICAgICAgICAgICAgIHwg
MSArCj4gIGluY2x1ZGUvdG9wbGV2ZWwubWsgICAgIHwgOCArKysrKysrLQo+ICBzY3JpcHRzL2Nv
bmZpZy9NYWtlZmlsZSB8IDIgLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQo+IGlu
ZGV4IGFiOTdlYWNjOWQyYi4uNjVlZTEwYTg0YjhkIDEwMDY0NAo+IC0tLSBhL01ha2VmaWxlCj4g
KysrIGIvTWFrZWZpbGUKPiBAQCAtMTgsNiArMTgsNyBAQCAkKGlmICQoZmluZHN0cmluZyAkKHNw
YWNlKSwkKFRPUERJUikpLCQoZXJyb3IgRVJST1I6IFRoZSBwYXRoIHRvIHRoZSBPcGVuV3J0IGRp
cgo+Cj4gIHdvcmxkOgo+Cj4gK0RJU1RST19QS0dfQ09ORklHOj0kKHNoZWxsIHdoaWNoIC1hIHBr
Zy1jb25maWcgfCBncmVwIC1FICdcL3VzcicgfCBoZWFkIC1uIDEpCklmIHdlIGV4cG9ydCB0aGlz
LCB0aGVuIHdlIGNhbiBjaGVjayBpdHMgZXhpc3RlbmNlIGluCnRvb2xzL3BrZy1jb25maWcvZmls
ZXMvcGtnLWNvbmZpZywgYW5kIGRlY2lkZSB3aGljaCBwa2ctY29uZmlnIHdlIHdhbnQKdG8gcnVu
LgpUaGUgZm9sbG93aW5nIGlzIG9wdGlvbmFsLCBzaW5jZSBpdCBhbHJlYWR5IHdvcmtzIGFzIGlz
LCBidXQgSSB3b3VsZApzdWdnZXN0IG5vdCB1c2luZyBgL3VzcmAgYXMgYSBmaWx0ZXIgaGVyZTsg
VE9QRElSIG1heSBiZSBpbiAvdXNyLgpJbnN0ZWFkLCB3ZSBjYW4gZmlsdGVyLW91dCAic3RhZ2lu
Z19kaXIvaG9zdC9iaW4iLCB3aGljaCBpcyB3aGF0IHdlCmFyZSBhZGRpbmcgdG8gUEFUSCBiZWxv
dzoKCmV4cG9ydCBESVNUUk9fUEtHX0NPTkZJRzo9JChzaGVsbCB3aGljaCAtYSBwa2ctY29uZmln
IHwgZ3JlcCAtdkUKJy9zdGFnaW5nX2Rpci9ob3N0L2Jpbi9wa2ctY29uZmlnJyB8IGhlYWQgLW4g
MSkKClRoZW4sIHdlIGNhbiB1c2UgdGhlIHZhcmlhYmxlIGluIG91ciBwa2ctY29uZmlnIHNjcmlw
dCB0byBkZWNpZGUgd2hhdAp0byBydW4sIHVzaW5nIGp1c3QgcGtnLWNvbmZpZy5yZWFsIGFzIGEg
ZmFsbGJhY2sgaWYgbm90aGluZyBpcyBkZWZpbmVkCihhbHRlcm5hdGl2ZWx5LCB3ZSBjYW4gZmFp
bCBpbnN0ZWFkKToKCi0tLSBhL3Rvb2xzL3BrZy1jb25maWcvZmlsZXMvcGtnLWNvbmZpZworKysg
Yi90b29scy9wa2ctY29uZmlnL2ZpbGVzL3BrZy1jb25maWcKQEAgLTEsMyArMSw5IEBACiAjIS9i
aW4vc2gKCi1wa2ctY29uZmlnLnJlYWwgLS1kZWZpbmUtdmFyaWFibGU9cHJlZml4PSR7U1RBR0lO
R19QUkVGSVh9Ci0tZGVmaW5lLXZhcmlhYmxlPWV4ZWNfcHJlZml4PSR7U1RBR0lOR19QUkVGSVh9
Ci0tZGVmaW5lLXZhcmlhYmxlPWJpbmRpcj0ke1NUQUdJTkdfUFJFRklYfS9iaW4gJEAKK2lmIFsg
LW4gIiR7U1RBR0lOR19QUkVGSVh9IiBdOyB0aGVuCisgICAgICAgcGtnLWNvbmZpZy5yZWFsIC0t
ZGVmaW5lLXZhcmlhYmxlPXByZWZpeD0ke1NUQUdJTkdfUFJFRklYfQotLWRlZmluZS12YXJpYWJs
ZT1leGVjX3ByZWZpeD0ke1NUQUdJTkdfUFJFRklYfQotLWRlZmluZS12YXJpYWJsZT1iaW5kaXI9
JHtTVEFHSU5HX1BSRUZJWH0vYmluICRACitlbGlmIFsgLW4gIiR7RElTVFJPX1BLR19DT05GSUd9
IiBdOyB0aGVuCisgICAgICAgJHtESVNUUk9fUEtHX0NPTkZJR30gJEAKK2Vsc2UKKyAgICAgICBw
a2ctY29uZmlnLnJlYWwgJEAKK2ZpCgpSZWdhcmRzLAoKRW5lYXMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
