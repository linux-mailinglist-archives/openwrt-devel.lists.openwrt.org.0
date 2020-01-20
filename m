Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6F21432F3
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+oagnHQ4PIhE/NWHN4lk0fLNi3ROMGQBIc8jO+FOYs=; b=F75nYYAPWGqiTy
	VWIbFrWhJPJZHF7oKal1W+PaMbSy4mMZFTiqPNeDu42QucmLd8Nxn0aKjbIIIGjvy+zltPKd/TjeX
	vrbKOOVmgUYyjijH+Lj7X5U2KU3WQf4BTn2M51z+Js3PeIYYxr/pon0CWATXmlYxelIyWxhABCgZq
	Aajeh0+1lZHa2NuE9KbIx4l+nKzdV2gPCbqqqZnQWFsE4O+se/jw68UwqhQEC366E6eRipIEpo7k5
	GSH79d/C4o3d1rTVNEE0WxQqt3qMcUjtg0FLgHeUyHrKiytgDaBe/PAlGC2onm2ulUx9HNDfUkfIV
	sWJLmzX3N8bR+EWh5LUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdop-0002SN-Ot; Mon, 20 Jan 2020 20:38:43 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdof-0002Rv-0e
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:38:34 +0000
Received: by mail-ed1-x52d.google.com with SMTP id r21so820249edq.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Jan 2020 12:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3zPu0jr1Ho5JpJZtAq36jLD7mSXfCBYe7+1u9Y5cDVk=;
 b=M+bPQq01a4Tt7XajgCnHbBgZm8oJY9b84Q9EqQGNp+V40pn+4idCzPwzWWI10BtB0G
 0VFz/ZhQf7GC7OO9y67P6HK+fheqj6IFaEOeRtXXoeS8/f2B8PlUWXxr0cdRUnOybejx
 PH/+C+c2FJfYnHx5X2vNBQH8q6wCcg8NMhuKMu3RGRxscoetiISTL7NpvpNSz8/Pfn36
 Wxfhz9oYvD3DnVqDSycWrRhNT4bB4GiA8vw1Zlyfxletqg69hG9u9clr9z0BUAzt4JNb
 QFIuPxyIXwQdt097xOnNsv9K5Y6bpmLxmWw7XntDbdgodyPxykmxE65KxXyHJbGy5Y6m
 eWKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3zPu0jr1Ho5JpJZtAq36jLD7mSXfCBYe7+1u9Y5cDVk=;
 b=Ep01+Z7ogI4e/KR9ycVmBfvx2IWghjIZVSyv5jPHEF2/ZrR85TNA/0AEyvpnTkC6Aa
 BXsrLxNI4PMEgK9YpRSOvL15Ue1tx7SswTPs+Lon21KEr4wrP7k7ZcgIBc0gR950C4ms
 CSKDuKCc53hCe2lTatYPPG/NqXig2T14fx5mTeWN98mWmx6FtgHv5cuW1xxvcuNbWPsQ
 J9rUSOLYjdX4jt9LSvdI9ZBdR+y+cQd/jZUWxiwxbxpivc5tKAsEM9IJuAkRmBkRqdlg
 Tt6FqBfqjZmYP9DnxWgneEo09EqqIlVN4rFhBKwmQqMyObmv83O9Ol4r9XA0Ht0h6xf/
 n1XQ==
X-Gm-Message-State: APjAAAXenZ9xLJNx8ufbXQ5NjpwvyrRcA9HeQJeK7sYYfAl8c53i4M+2
 P+fOVWSJMX1gyDTZ/Gw1Is9KJJ6R+Mj/LHmpYVF0Xf6633M=
X-Google-Smtp-Source: APXvYqyDBxmAYr2ns5FgejSERQQeH90UORhJ6Vdw4R2nSG9L4Zw1cehy1Vwx/9oxqeTKTRwvYze0LVOAU91Zn0Qfr2U=
X-Received: by 2002:a17:906:a394:: with SMTP id
 k20mr1170788ejz.216.1579552710716; 
 Mon, 20 Jan 2020 12:38:30 -0800 (PST)
MIME-Version: 1.0
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
 <20200112120957.GF86978@meh.true.cz> <20200114211118.GA160861@pc>
 <20200120110855.GE69327@meh.true.cz>
In-Reply-To: <20200120110855.GE69327@meh.true.cz>
From: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>
Date: Mon, 20 Jan 2020 21:38:59 +0100
Message-ID: <CAOjtDRWY==ZX78cgQeZFuLA4cNODiikM1okqO-H-1T4d0fG7ag@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_123833_060219_39F78648 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpJIGhhdmUgY2hlY2tlZCB2MiBvZiB0aGUgcGF0Y2gsIGFuZCBjYW4gY29uZmlybSB0
aGF0IGl0IGZpeGVzIHRoZSBvdXQKb2YgYm91bmRzIHJlYWRzLgoKSSBoYXZlIGFsc28gZnV6emVk
IGJsb2Jtc2dfcGFyc2UgYW5kIGJsb2Jtc2dfcGFyc2VfYXJyYXkgZm9yIGFuIGhvdXIKd2l0aCBM
aWJGdXp6ZXIsIHRvIGNoZWNrIHRoYXQgdGhlcmUgYXJlIG5vIG1vcmUgc2ltaWxhciBzaGFsbG93
IGlzc3VlcwphbmQgbm8gbmV3IGNyYXNoZXMgd2VyZSBmb3VuZC4KClRoYW5rIHlvdSBmb3IgdGhl
IGhlbHAhCgpSZWdhcmRzLApKdXJhagoKT24gTW9uLCBKYW4gMjAsIDIwMjAgYXQgMTI6MDkgUE0g
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4KPiBKdXJhaiBWaWp0aXVrIDxq
dXJhai52aWp0aXVrQHNhcnR1cmEuaHI+IFsyMDIwLTAxLTE0IDIyOjExOjE4XToKPgo+IEhpLAo+
Cj4gSSBqdXN0IHNlbnQgdjIgZm9yIHJldmlld1syXSwgY2FuIHlvdSBjaGVjayBpdCBwbGVhc2U/
Cj4KPiA+ID4gPiBAQCAtMTkxLDcgKzE5NywxMSBAQCBpbnQgYmxvYm1zZ19wYXJzZShjb25zdCBz
dHJ1Y3QgYmxvYm1zZ19wb2xpY3kgKnBvbGljeSwgaW50IHBvbGljeV9sZW4sCj4gPiA+ID4gICAg
IH0KPiA+ID4gPgo+ID4gPiA+ICAgICBfX2Jsb2JfZm9yX2VhY2hfYXR0cihhdHRyLCBkYXRhLCBs
ZW4pIHsKPiA+ID4gPiArICAgICAgICAgICBpZiAobGVuIDwgc2l6ZW9mKHN0cnVjdCBibG9iX2F0
dHIpICsgc2l6ZW9mKHN0cnVjdCBibG9ibXNnX2hkcikpCj4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICByZXR1cm4gLTE7Cj4gPiA+Cj4gPiA+IElmIHRoZXJlIGlzIHN1Y2ggcHJvYmxlbSwgdGhl
biB0aGlzIHNob3VsZCBiZSBwcm9iYWJseSBmaXhlZCBkaXJlY3RseSBpbgo+ID4gPiBfX2Jsb2Jf
Zm9yX2VhY2hfYXR0ciBzbyB3ZSBwb3NzaWJseSBwcm90ZWN0IG90aGVyIF9fYmxvYl9mb3JfZWFj
aF9hdHRyCj4gPiA+IHVzZXJzWzFdLgo+ID4KPiA+IENhbiB5b3UgbWF5YmUgcHJvdmlkZSBhIHBh
dGNoPyBJJ2QgYmUgaGFwcHkgdG8gdGVzdCBpdCBhbmQgbGV0IHlvdQo+ID4ga25vdyB3aGF0IHRo
ZSByZXN1bHRzIGFyZS4KPgo+IFNlZW1zIGxpa2UgSSBuZWVkIG1vcmUgdGltZSBvbiB0aGlzLCB0
byBjb21lIHVwIHdpdGggc29tZSBtZWFuaW5nZnVsIHNvbHV0aW9uCj4gKGl0J3MgYmxvYiByZWxh
dGVkIGZ1bmN0aW9uLCBidXQgaXQgd291bGQgbmVlZCB0byBjaGVjayBibG9ibXNnIGV0Yy4pLCBJ
J3ZlCj4ganVzdCBwcmVwYXJlZCBzb21lIGNvbW1vbiBoZWxwZXIgZnVuY3Rpb25zIHdoaWNoIHNo
b3VsZCBoZWxwLiBJIGRvbid0IHdhbnQgdG8KPiBibG9jayB0aGlzIGNoYW5nZXMganVzdCBiZWNh
dXNlIG9mIHRoYXQuIEknbGwgdHJ5IHRvIGFkZCB5b3UgdG8gdGhlIENjOiBpbgo+IHRoYXQgZm9s
bG93IHVwIHBhdGNoLgo+Cj4gMS4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8x
MjI1ODc4Lwo+Cj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
