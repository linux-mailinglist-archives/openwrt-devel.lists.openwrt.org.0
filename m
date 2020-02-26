Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B54F17002A
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 14:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TH34T7i7CQWtbGQ3LC5yhhXbK0IbkzE7ZUwLDAf7oh8=; b=PXBVLyk7ITxESya2FehxK9DXZU
	/D0EzBlJMipZtPqzn/0ogENU5ND9kxPYd+UNqVM4a11oNZDV+gBziazLl8Hji4nfRrfCOgjNLyFg5
	miaKXnWrrU+sbJlQ7F/8PvEvKlXd6Blxm0F/bsyJNMAehr0tf7tTgc/7vKTtsMdaZl2jWW7JtI7+G
	XZlOa+qs8+SLP+TLxbCbY45nsS1HmeQ2NEltCzJsi6z8+wSqe/P/UfQgmXMN4UjcwPshPyUvxzwfO
	43K65aCkObbeKAEN4MMVZurZlaxXcT4jqXWE18Hc/gWoYzZPY4YkdE43lre9pV1igJh63OVHl3elP
	+0wdoWNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wrt-0007Ve-8Y; Wed, 26 Feb 2020 13:36:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wrb-0007Tq-5N; Wed, 26 Feb 2020 13:36:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6789D4944;
 Wed, 26 Feb 2020 14:36:28 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c5a942fd;
 Wed, 26 Feb 2020 14:36:15 +0100 (CET)
Date: Wed, 26 Feb 2020 14:36:14 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200226133614.GJ99033@meh.true.cz>
References: <7e661795-63c8-2c62-f3ce-bde77adcdfe2@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e661795-63c8-2c62-f3ce-bde77adcdfe2@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_053635_352248_59470D7C 
X-CRM114-Status: UNSURE (   7.21  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] RFC: versions.json
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, openwrt-adm@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiBbMjAyMC0wMi0yMyAwMDowNDo1OV06Cgpb
IGFkZGluZyBvcGVud3J0LWRldmVsIHRvIHRoZSBDYzogbG9vcCBdCgpIaSwKCj4gQSBmaXJzdCBz
dGVwIGNvdWxkIGJlIHRvIGVzdGFibGlzaCBhICp2ZXJzaW9ucy5qc29uKiBmaWxlIGF0IHRoZSBy
b290IG9mCj4gZG93bmxvYWRzLm9wZW53cnQub3JnISBUaGUgZmlsZSB3b3VsZCBhbGxvdyB0byBj
aGVjayBpZiBhIGRldmljZSBzdGlsbCBydW5zCj4gdGhlIGxhdGVzdCByZWxlYXNlLiBKU09OIHNl
ZW1zIGNvbW1vbiBlbm91Z2ggYW5kIGlzIHdlbGwgc3VwcG9ydGVkIGJ5IEx1Q0lzCj4gSmF2YVNj
cmlwdCBpbXBsZW1lbnRhdGlvbiBhbmQgYWxzbyB2aWEganNobi5zaCBvbiBhIENMSS9zY3JpcHQg
bGV2ZWwuCgpJJ20gd29uZGVyaW5nIHdoZXRoZXIgdGhpcyBKU09OIGlzIHJlYWxseSBuZWVkZWQs
IHdvdWxkbid0IGp1c3Qgc29tZSBraW5kIG9mCnVuaWZpZWQgc3ltbGluay9kaXJlY3Rvcnkgc3Ry
dWN0dXJlIHdvdWxkIHdvcmsgYXMgd2VsbD8gSSBtZWFuLCB3aHkgdG8gY2FyZQphYm91dCBhbm90
aGVyIEpTT04gZmlsZSBjb250ZW50IGlmIHRoZSBzYW1lIGNvdWxkIGJlIGFjaGlldmVkIG90aGVy
d2lzZS4KCiBzbmFwc2hvdCAgICAgICAgICAtPiBzbmFwc2hvdAogcmVsZWFzZS9jYW5kaWRhdGUg
LT4gMjAuMDcuMC1yYzIKIHJlbGVhc2UvY3VycmVudCAgIC0+IDE5LjA3LjEKIHJlbGVhc2UvcHJl
dmlvdXMgIC0+IDE4LjA2LjcKCkRvIHdlIG5lZWQgdG8gY2FyZSBhYm91dCBhcmNoaXZlIHJlbGVh
c2VzPwoKPiBVcGRhdGUgY2hlY2sgc2NyaXB0IHNob3VsZCBsb29rIGZvciB0aGUgY2xvc2VzdCB2
ZXJzaW9uIGZvdW5kIGluIHRoZSBzYW1lCj4gY2hhbm5lbC4gU28gYSAqc3RhYmxlKiAxOS4xMi4z
IGRldmljZSB1cGRhdGVzIHRvIDE5LjEyLjUgCgpXb3VsZG4ndCBpdCBiZSBzYWZlciB0byB1cGdy
YWRlIGZpcnN0IHRvIDE5LjEyLjQ/IDotKQoKPiBUaGlzIGNvdWxkIGFsc28gaW50cm9kdWNlIGNo
YW5uZWxzIGxpa2UgInN0YWJsZSIgKGxhdGVzdCBwb2ludCByZWxlYXNlKSwKPiAidGVzdGluZyIg
KHJjTikgYW5kICJ1bnN0YWJsZSIgKHNuYXBzaG90cykuIEFzIGEgZGljdCBpcyB1c2VkIHRoZSAq
dmVyc2lvbnMqCj4gYXJyYXkgY291bGQgYmUgZXh0ZW5kZWQgd2l0aG91dCBsb3NpbmcgY29tcGF0
aWJpbGl0eS4KCkTDqWrDoCB2dVsxXT8gOi0pIAoKMS4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvcGlwZXJtYWlsL29wZW53cnQtZGV2ZWwvMjAxOS1BdWd1c3QvMDE4NjQ2Lmh0bWwKCi0tIHlu
ZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
