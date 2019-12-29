Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F1B12C295
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 14:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugamAUp/Xyt7ywyIJnue2wN3mO4TjROJeFdKvYiUOsY=; b=Ae0IB8W1mIovml
	jfP1wKzON7xMc00FQ8hxm1l7YYZf0MDJlDA92DXUlF7QRr00OQZgK9JZvvMpP9DoI+7zAh6DsrD1X
	n+fIAS7H80DqMHmx3F5m5AmgnGxWcvAElBEFyIdvYyUIbNV/Ip657srUS+E0H9aR50UP3Fbros/fX
	gHd5ZqpGTTJW9OThvzVdxhv/kLiYMhUNm7MQUp+ZixQrMAnrwQ3cberTMDSoxAqkOtDBmItmh8ZyJ
	DjdZR0mlOfw36ufPGgH9FJn+65p16CxM1UNFDn6BDXMTrpZIr13VSwlyx+gdK18WbkAWrIPeBjMsC
	FtyIs4nFFeDcUUVQVx2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilZ0b-000279-7t; Sun, 29 Dec 2019 13:53:29 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilZ0T-0001zN-Jg
 for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 13:53:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id j26so30986355ljc.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 05:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IvV10MVIQeOSLGJvCwTptw3AZHNHzisBpfUIjffj8Qc=;
 b=DgKYzzU+ADAtf5MPAdDMDt2gpR8poZlIHMxigekndvEBO/Ac9hnukqikQmxxfr8Eg3
 TpYM02k7AEKtpoD6nX5klcegWBLTGfb8Hzbjk50PLadUKnBFcGURP8646I7F6sg9CdPX
 jDZXHewolEMj7znTTc72HTmtsgZxR69YePVt5M55PgBflstp0h2K/w6TxKR2Q/IMsTOE
 l2rHppZtHVMKr1d0NpsEc2XAkqiu6EIk+ZTc0bJHVyX5RaVXkgAbaW1+gTp+6Td5tV4o
 kUxogNf0GdcQeqHDQspfSrJlR+m/FToOG5/pzs7pY3yRAQRAjRZUptwk8vsYkw8CVXrz
 86dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IvV10MVIQeOSLGJvCwTptw3AZHNHzisBpfUIjffj8Qc=;
 b=DCGCr3hFR7bwgJoYX/fZlwImZRQKkeKkqWw5TQLr+dCdR/NcK6ZcjdFGhRFTr4cxFh
 0pE6ErO4iOH2kIqLtdYj4PEcB0O1nNwL6UnzlD+DOp/MxwEsSqRbzQ06R/nEp6NoQuzV
 Bq9sz18DWhtc6I+bT9ATTDHR6gX/f7zpLPVxWPSFfi1eSTauaFHipNFNTT8lyFFJdmnm
 zJ/fzYZrSTMsxIGvLOls5XqDghDccjU/wGW5WakAdEuc8yQe49SrpiJWzW6xtxJRZnb8
 0hDWjj2bYc5wtkcBVrspZhLmBNipqnF5MVaHvdvfI7RgFtgJ0TwpI6svkfx65vFt99QV
 Lp7w==
X-Gm-Message-State: APjAAAX6z755QmvFqU2rdSsF2AA5eI+KWFWEo1otKrfGFfBoFELz5Nbo
 d+30aB1MpsreSx8jFuyx+eS49ST9RNDrjcrBveQ=
X-Google-Smtp-Source: APXvYqzZEf0l1vsz7VmRzA0uhnettd3G/I3m2BXqpQCWwqTk9IJYnGJPoDbfElzNP4tYS7SVg5CvdpvE1PzW8d12sMU=
X-Received: by 2002:a2e:b0c9:: with SMTP id g9mr33893699ljl.134.1577627597935; 
 Sun, 29 Dec 2019 05:53:17 -0800 (PST)
MIME-Version: 1.0
References: <20191227085335.10144-1-zajec5@gmail.com>
 <CAECwjAjw7dkkgqSd47N55XC1JwLNWUMTQQHSJdJ5y4fEhnoYDw@mail.gmail.com>
 <f4eacae6-bfea-c9b5-4b00-f0a349639e93@gmail.com>
In-Reply-To: <f4eacae6-bfea-c9b5-4b00-f0a349639e93@gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Sun, 29 Dec 2019 21:53:06 +0800
Message-ID: <CAECwjAhgiOGD2QJFfo7LgmN_UgvnCJTfOOp90ktnLKW-ju-V5Q@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_055321_681937_F6049ACA 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH fstools] Revert "block: mount_action:
 handle mount/umount deps"
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0LCAyOCBEZWMgMjAxOSBhdCAxODoyNywgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIDI3LjEyLjIwMTkgMTM6MjUsIFlvdXNvbmcgWmhvdSB3cm90
ZToKPiA+IE9uIEZyaSwgMjcgRGVjIDIwMTkgYXQgMTY6NTMsIFJhZmHFgiBNacWCZWNraSA8emFq
ZWM1QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJh
ZmFsQG1pbGVja2kucGw+Cj4gPj4KPiA+PiBUaGlzIHJldmVydHMgY29tbWl0IDMyYzMxMjZiMmYw
NDY0MTA2ZDc0MzE3MzM2YjZhZWYxZDdkNWY4MmYuCj4gPj4KPiA+PiBJbnRlcm5hbCBsaXN0IG9m
IGRldmljZXMgZ3VhcmFudGVlcyBzb21lIGJhc2ljIHNvcnRpbmcgKGJ5IGRldmljZSB0eXBlCj4g
Pj4gYW5kIHRoZW4gYSBuYW1lKSBidXQgbm90aGluZyBtb3JlLiBJbiBwYXJ0aWN1bGFyIGl0J3Mg
bm90IGd1YXJhbnRlZWQKPiA+PiAoYW5kIGl0J3MgYWN0dWFsbHkgcXVpdGUgdW5jb21tb24pIHRo
YXQgYWxsIHByZWNlZGluZyBlbnRyaWVzIGFyZSBwYXJlbnQKPiA+PiBkZXZpY2VzLgo+ID4+Cj4g
Pj4gTW91bnRpbmcgYWxsIHByZWNlZGluZyBkZXZpY2VzIG1heSBlYXNpbHkgcmVzdWx0IGluIHVu
cmVsYXRlZCBtb3VudHMuCj4gPj4gVGhleSBjYW4gZmFpbCBlYXNpbHkgYmFzaWNhbGx5IGJyZWFr
aW5nIG9yaWdpbmFsIG1vdW50aW5nIGF0dGVtcHQsIGUuZy46Cj4gPj4KPiA+PiBkYWVtb24uZXJy
IGJsb2NrZDoga2VybmVsIGlzIHJlcXVlc3RpbmcgYSBtb3VudCAtPiBzZGEyCj4gPj4gZGFlbW9u
LmVyciBibG9jazogL2Rldi9zZGExIGlzIGFscmVhZHkgbW91bnRlZCBvbiAvdG1wL3J1bi9ibG9j
a2Qvc2RhMQo+ID4+IGRhZW1vbi5lcnIgYmxvY2s6IGF1dG9mczogImFkZCIgYWN0aW9uIGhhcyBm
YWlsZWQ6IC0xCj4gPj4gZGFlbW9uLmVyciBibG9ja2Q6IGZhaWxlZCB0byBydW4gYmxvY2suIGFk
ZC9zZGEyCj4gPgo+ID4gU29ycnkgZm9yIHRoZSBpbmNvbnZlbmllbmNlLiAgQnV0IHRoZSBlcnJv
ciAocmVncmVzc2lvbikgc2hvdWxkIGJlCj4gPiBjYXVzZWQgYnkgMmYyYTA5YWQgKCJibG9jazog
bW91bnRfZGV2aWNlOiBlcnIgbG9nIG9ubHkgd2hlbiBtcAo+ID4gZGV2aWF0ZXMgZnJvbSBzcGVj
IikuICBtLT50YXJnZXQgaXMgZXhwZWN0ZWQgdG8gbWF0Y2ggdGhlIGFjdHVhbCBtb3VudAo+ID4g
cG9pbnQgb25seSB3aGVuIGl0IGlzIG5vdCBtYW5hZ2VkIGJ5IGJsb2NrZCAobS0+YXV0b2ZzKS4K
PiA+Cj4gPiBQbGVhc2Ugc2VlIGlmIHRoZSBmb2xsb3dpbmcgcGF0Y2ggd29ya3MuICBXZSBjYW4g
YWxzbyBjaGVjayBpZiBtIGlzCj4gPiBtYW5hZ2VkIGJ5IGF1dG9mcyBhbmQgbS0+dGFyZ2V0IGEg
c3ltbGluayB3aG9zZSB0YXJnZXQgbWF0Y2hlcyBtcCwgYnV0Cj4gPiB0aGF0J3MgYSBiaXQgb3Zl
cmtpbGwuCj4gPgo+ID4gLS0tIGEvYmxvY2suYwo+ID4gKysrIGIvYmxvY2suYwo+ID4gQEAgLTEx
MDAsNyArMTEwMCw3IEBAIHN0YXRpYyBpbnQgbW91bnRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRl
diwgaW50IHR5cGUpCj4gPgo+ID4gICAgICAgICAgbXAgPSBmaW5kX21vdW50X3BvaW50KHByLT5k
ZXYpOwo+ID4gICAgICAgICAgaWYgKG1wKSB7Cj4gPiAtICAgICAgICAgICAgICAgaWYgKG0gJiYg
bS0+dHlwZSA9PSBUWVBFX01PVU5UICYmIHN0cmNtcChtLT50YXJnZXQsIG1wKSkgewo+ID4gKyAg
ICAgICAgICAgICAgIGlmIChtICYmICFtLT5hdXRvZnMgJiYgbS0+dHlwZSA9PSBUWVBFX01PVU5U
ICYmIHN0cmNtcChtLT50YXJnZXQsIG1wKSkgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
IFVMT0dfRVJSKCIlcyBpcyBhbHJlYWR5IG1vdW50ZWQgb24gJXNcbiIsIHByLT5kZXYsIG1wKTsK
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtMTsKPiA+ICAgICAgICAgICAgICAg
ICAgfSBlbHNlCj4gPgo+Cj4gWW91J3JlIHJpZ2h0IGFib3V0IHRoYXQgZXJyb3IgYW5kIHlvdXIg
ZGlmZiBpbmRlZWQgZml4ZXMgdGhhdDoKPiAvZGV2L3NkYTEgaXMgYWxyZWFkeSBtb3VudGVkIG9u
IC90bXAvcnVuL2Jsb2NrZC9zZGExCj4gZm9yIG1lLiBJdCBzdGlsbCBkb2Vzbid0IGZpeCBtb3Vu
dGluZyB1bm5lZWRlZCBkZXZpY2VzIHRob3VnaC4KPgo+Cj4gUGxlYXNlIGNoZWNrIHRoaXM6Cj4K
PiAjIG1vdW50IHwgZ3JlcCAiL2Rldi9zZCIKPgo+ICMgbHMgL3Zhci9ydW4vYmxvY2tkL3NkYjIK
PiBiLnR4dAo+Cj4gIyBtb3VudCB8IGdyZXAgIi9kZXYvc2QiCj4gL2Rldi9zZGExIG9uIC90bXAv
cnVuL2Jsb2NrZC9zZGExIHR5cGUgdmZhdCAocncscmVsYXRpbWUsZm1hc2s9MDAwMCxkbWFzaz0w
MDAwLGFsbG93X3V0aW1lPTAwMjIsY29kZXBhZ2U9NDM3LGlvY2hhcnNldD1pc284ODU5LTEsc2hv
cnRuYW1lPW1peGVkLGVycm9ycz1yZW1vdW50LXJvKQo+IC9kZXYvc2RhMiBvbiAvdG1wL3J1bi9i
bG9ja2Qvc2RhMiB0eXBlIHZmYXQgKHJ3LHJlbGF0aW1lLGZtYXNrPTAwMDAsZG1hc2s9MDAwMCxh
bGxvd191dGltZT0wMDIyLGNvZGVwYWdlPTQzNyxpb2NoYXJzZXQ9aXNvODg1OS0xLHNob3J0bmFt
ZT1taXhlZCxlcnJvcnM9cmVtb3VudC1ybykKPiAvZGV2L3NkYjEgb24gL3RtcC9ydW4vYmxvY2tk
L3NkYjEgdHlwZSBmdXNlYmxrIChydyxyZWxhdGltZSx1c2VyX2lkPTAsZ3JvdXBfaWQ9MCxhbGxv
d19vdGhlcixibGtzaXplPTQwOTYpCj4gL2Rldi9zZGIyIG9uIC90bXAvcnVuL2Jsb2NrZC9zZGIy
IHR5cGUgZnVzZWJsayAocncscmVsYXRpbWUsdXNlcl9pZD0wLGdyb3VwX2lkPTAsYWxsb3dfb3Ro
ZXIsYmxrc2l6ZT00MDk2KQo+Cj4gQXMgeW91IGNhbiBzZWUsIGFjY2Vzc2luZyAic2RiMiIgcGFy
dGl0aW9uIHJlc3VsdGVkIGluIG1vdW50aW5nIDMgb3RoZXIKPiBwYXJ0aXRpb25zIHRoYXQgSSBk
b24ndCBuZWVkIGF0IGFsbC4gSW5jbHVkaW5nIHNwaW5uaW5nIDEgdW51c2VkIGRpc2shCj4KPgo+
ID4+IElmIHNvbWUgZGVwZW5kZW5jeSBoYW5kbGluZyBpcyByZXF1aXJlZCBpdCBzaG91bGQgYmUg
aW1wbGVtZW50ZWQKPiA+PiBleHBsaWNpdGx5IGFzIGN1cnJlbnQgc29sdXRpb24gaXNuJ3QgcmVs
aWFibGUgYW5kIGl0IGJyZWFrcyBhdXRvZnMgd2hlbgo+ID4+IHVzaW5nIG11bHRpcGxlIGRldmlj
ZXMgKHBhcnRpdGlvbnMpLgo+ID4+Cj4gPgo+ID4gRGVwZW5kZW5jaWVzIGFyZSBkaXJlY3RseSBp
bXBsaWVkIGJ5IG1vdW50IHRhcmdldCBhcyBzcGVjaWZpZWQgaW4gdGhlCj4gPiB1Y2kgY29uZmln
IGZpbGUuICBUaGlzIHJlbGF0aW9uc2hpcCBpcyBpbmhlcmVudGx5IHRoZXJlLiAgRS5nLgo+ID4K
PiA+ICAgMS4gbW91bnQgdGFyZ2V0IC9tbnQvYQo+ID4gICAyLiBtb3VudCB0YXJnZXQgL21udC9h
L2IKPiA+Cj4gPiBUaGVuICIxIiBtdXN0IG1vdW50IGJlZm9yZSAiMiIuICAiMiIgYmVmb3JlICIx
IiBpcyBub3QgcHJhY3RpY2FsbHkKPiA+IHVzZWZ1bCBpbiBhbnkgd2F5Lgo+Cj4gVGhhdCByZWxh
dGlvbnNoaXAvZGVwZW5kZW5jeSBpc24ndCBkaXJlY3RseSBwYXJzZWQgYnkgZnN0b29scyBpbiBh
bnkKPiB3YXkuIEJ5IG1ha2luZyBpdCBleHBsaWNpdCBJIHRob3VnaHQgb2Ygc29tZXRoaW5nIGxp
a2U6Cj4KPiBjb25maWcgJ21vdW50JyAnL2Rldi92ZGMnCj4gICAgICAgICBvcHRpb24gIHRhcmdl
dCAgJy9tbnQnCj4gICAgICAgICBvcHRpb24gIHV1aWQgICAgJ0FBQUEnCj4gICAgICAgICBvcHRp
b24gIGVuYWJsZWQgJzEnCj4gICAgICAgICBvcHRpb24gIGF1dG9mcyAgJzEnCj4KPiBjb25maWcg
J21vdW50JyAnL2Rldi92ZGInCj4gICAgICAgICBvcHRpb24gIHBhcmVudCAgJy9kZXYvdmRjLwo+
ICAgICAgICAgb3B0aW9uICB0YXJnZXQgICcvbW50L3MnCgpUaGUgcG9pbnQgaXMgdGhhdCB0aGlz
ICJwYXJlbnQiIHJlbGF0aW9uc2hpcCBpcyBhbHJlYWR5IGltcGxpZWQuICBUaGlzCmV4dHJhIHVj
aSBvcHRpb24gZG9lcyBhZGQgbW9yZSBpbmZvcm1hdGlvbi4KCj4gVGhhdCByZWxhdGlvbnNoaXAv
ZGVwZW5kZW5jeSBpc24ndCBkaXJlY3RseSBwYXJzZWQgYnkgZnN0b29scyBpbiBhbnkKPiB3YXku
CgpUaGF0IGRldmNlcyBsaXN0IHdhcyBtb2RpZmllZCB0byBiZSBvcmRlcmVkIHByaW1hcmlseSBi
eSBsZW5ndGggb2YKbW91bnQgdGFyZ2V0IHdhcyBmb3IgdGhpcyAoZmIwNzAwZjAgImJsb2NrOiBz
dXBwb3J0IGhpZXJhcmNoaWNhbAptb3VudC91bW91bnQiKS4gIEJ1dCBpdCdzIG5vdCB0aWdodC9w
cmVjaXNlIGVub3VnaCB0byBvbmx5IG1vdW50CmRpcmVjdCBkZXBlbmRlbmNpZXMsIGJ1dCBhbGwg
ZW5hYmxlZCBtb3VudHMgd2hvc2UgbGVuZ3RoIHNtYWxsZXIgdGhhbgppdHNlbGYuCgpJIG1hZGUg
YSBwYXRjaCBbMV0gZmV3IGRheXMgYWdvIHRyeWluZyB0byBhbWVuZCB0aGF0IGJ1dCBkaWRuJ3Qg
eWV0CmhhdmUgdGltZSB0byB0ZXN0IGl0LiAgTm93IEkgY2hlY2tlZCBpdCBhZ2FpbiwgdGhhdCAi
dGFyZ2V0IiBkZWZhdWx0cwp0byAiL21udC88ZGV2PiIgIGFuZCBhbm9uX21vdW50PTEgYWxzbyBu
ZWVkIHRvIGJlIHRha2VuIGludG8KY29uc2lkZXJhdGlvbi4gIE5ldmVydGhlbGVzcywgdGhpcyBk
ZXBlbmRlbmN5IHRyYWNraW5nIG1lY2hhbmlzbSBzdGlsbApuZWVkcyB0byBiZSBoYW5kbGVkIGJ5
IHRoZSBwcm9ncmFtIGl0c2VsZiwgbm90IGV4dHJhIGtub2JzLgoKWzFdIGh0dHBzOi8vZ2l0aHVi
LmNvbS95b3Vzb25nL2ZzdG9vbHMvY29tbWl0LzBlYWI4NTNhNzg1N2M5NjdlZmJjNmZiN2E2ZTBi
YTIwZTVkZDNhYmEKClJlZ2FyZHMsCiAgICAgICAgICAgICAgICB5b3Vzb25nCgo+ICAgICAgICAg
b3B0aW9uICB1dWlkICAgICdCQkJCJwo+ICAgICAgICAgb3B0aW9uICBlbmFibGVkICcxJwo+ICAg
ICAgICAgb3B0aW9uICBhdXRvZnMgICcxJwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
