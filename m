Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FCB6B551
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 06:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEfKg8T5W46V7M25qxpFn8+jGuZddBIPT4LffiAGkAg=; b=E62xUiMxJoglww
	03yZeDS13XEGMlY9F2D3FvAIq2iDTR95NmzvB1NixGO2SWdedasUB+qbheODJP1/7bwAFQh0L6zkv
	skQdFbepc53w14r9/TB2l23P5MKk3ft60klVQo+9sOXmSFu0aqJ9pYD4JJpA750xZGhMob9ZiYI03
	zFb2BFuqXXc2a62uVGNKffAx6bOzArBL0egRBvQqnEQ+A3izTGoVbdiUwt0ILY+p5WTYs8GeWxe8f
	3UQHPBLPP6CqTZzbUrTRnlrnIHkVrYl4khQfVuzgXtbeUP3dKkOrgHK+TJc+Vwk9jx3vDVws0dIzG
	GBlCY+rdfFy3HU4hox1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnbOF-0004Zh-Px; Wed, 17 Jul 2019 04:18:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnbO9-0004Z7-82
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 04:17:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so23101836wre.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 16 Jul 2019 21:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7gWwYrFzugQ4QIlpJNrqdpoAmNj/Z6n0kFCadUWGk3A=;
 b=Ypz/7uZ9jL5e18ZK5SmyD62hs644idjlgqbB3L9rZ8Vchz/6VGgsnvdE8s/MA1jKW8
 +yV1hAl1U1rBk6x6HjrKQhUqOgoIx1ZfdPpx31FmOy7t8hELE8r6IiHtnvo0mGCfJ2Ma
 y+lbjUHGkpKZ8+VQB7yYJC948Cx1vzeud/sAqL3V9vAthY5bTNVn6ZCrSDpWMNDxp1r1
 /hTfaznsTDLiagC7jhAQmj8rzpxEh4L7LO3dROwZr7fnxKxVAfJd6AHd0rsLAAaNZEqu
 vjPVk5biuFY6vldIQFP4F14xnd2ki6X6SOHCptgx6ZcPaQV8YldwUEuz2/S8E5qrXh6a
 4fmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7gWwYrFzugQ4QIlpJNrqdpoAmNj/Z6n0kFCadUWGk3A=;
 b=p2s7RQkayh5sjp4y2wx9DRkP69co2SyMu24GAEzH7kMRTo/+bysESmBsSgodvvM2VX
 gCe/Rkbutb3AcZLLBGvXEE+scMTmd7j/Fvz2SXElss8xtQBTsxFRmaDlDgUK/dEeuQGC
 a2TUZSDxPr/q40rgjkTvgc6LE2PVrlyZ/Zbir8lXhB3+JyOTFFbeTGRNOOupFP0yQR+I
 l0BrlFouMUW+GKGJqmY3ir99YEK+fO+shPyzbtqX6rjCanY9vOGLM1ZySUVkqpwyKrQt
 M2ZQlmp4cAJNN9F4PyPyIg/ipGZmvdPnHONiG4MUbgC9SrZIovevbsqk5Shj95q2d+94
 4chw==
X-Gm-Message-State: APjAAAWDbIoRgZBb4AqcAxeTo1XDCA+d7LeQGEKBn5mWIjFV+yMhtEEu
 ib0h6lKYQBGT/5EpvUxf5SftklxA7gCN2/UNArk=
X-Google-Smtp-Source: APXvYqzwo1JQEk2lfUhqGExr+DdA7gVvDwdsJ6TzkuHT80oGvpc3qYsJe8X52kdxAjw439EWDjWhLZWQ4CyVr1LEpOs=
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr33944999wrx.193.1563337075015; 
 Tue, 16 Jul 2019 21:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190714024328.17271-1-champetier.etienne@gmail.com>
 <04f97319-0ea0-25b8-1a54-c85c8c7fb4db@david-bauer.net>
 <CAOdf3gqxNEsoSFs-rNt886MR=SzM93fMH_-6HEyF53200t511g@mail.gmail.com>
 <555d1fe9-d8ac-f0e1-ec9e-894a6a008375@david-bauer.net>
In-Reply-To: <555d1fe9-d8ac-f0e1-ec9e-894a6a008375@david-bauer.net>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Tue, 16 Jul 2019 21:17:43 -0700
Message-ID: <CAOdf3gr1at3jhgvB7mY=e4EirqaXhg4BezuEKO=oJ3-ufo5-EQ@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_211757_315277_31533E99 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: enable QCA955x SGMII fixup on
 Mikrotik wAP AC
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgRGF2aWQsCgpMZSBsdW4uIDE1IGp1aWwuIDIwMTkgw6AgMDE6NTgsIERhdmlkIEJhdWVyIDxt
YWlsQGRhdmlkLWJhdWVyLm5ldD4gYSDDqWNyaXQgOgo+Cj4gSGVsbG8gRXRpZW5uZSwKPgo+IE9u
IDE1LjA3LjE5IDA0OjMwLCBFdGllbm5lIENoYW1wZXRpZXIgd3JvdGU6Cj4gPiBIaSBEYXZpZCwK
PiA+Cj4gPiBMZSBkaW0uIDE0IGp1aWwuIDIwMTkgw6AgMDQ6MjUsIERhdmlkIEJhdWVyIDxtYWls
QGRhdmlkLWJhdWVyLm5ldD4gYSDDqWNyaXQgOgo+ID4+Cj4gPj4gSGkgRXRpZW5uZSwKPiA+Pgo+
ID4+IG9uZSBzbWFsbCByZW1hcms6Cj4gPj4KPiA+PiBPbiAxNC4wNy4xOSAwNDo0MywgRXRpZW5u
ZSBDaGFtcGV0aWVyIHdyb3RlOgo+ID4+PiAgICAgICBhdGg3OV9pbml0X21hYyhhdGg3OV9ldGgx
X2RhdGEubWFjX2FkZHIsIGF0aDc5X21hY19iYXNlLCAwKTsKPiA+Pj4gICAgICAgYXRoNzlfZXRo
MV9kYXRhLm1paV9idXNfZGV2ID0gJnJid2FwZ3NjX3BoeV9kZXZpY2UuZGV2Owo+ID4+PiAgICAg
ICBhdGg3OV9ldGgxX2RhdGEucGh5X2lmX21vZGUgPSBQSFlfSU5URVJGQUNFX01PREVfU0dNSUk7
Cj4gPj4+ICAgICAgIGF0aDc5X2V0aDFfZGF0YS5waHlfbWFzayA9IEJJVChSQldBUEdTQ19NRElP
X1BIWUFERFIpOwo+ID4+PiArICAgICBhdGg3OV9ldGgxX2RhdGEuZW5hYmxlX3NnbWlpX2ZpeHVw
ID0gMTsKPiA+Pgo+ID4+IFRoaXMgc2hvdWxkIGJlIGRyb3BwZWQgYXMgaXQncyBub3QgbmVjZXNz
YXJ5IGFueW1vcmUuCj4gPgo+ID4gRGlkIHNvbWUgbW9yZSB0ZXN0cyBhbmQgaXQncyBkZWZpbml0
ZWx5IG5lZWRlZCAoaGVyZSB0aGlzIGlzIGFyNzF4eCAmCj4gPiBMaW51eCA0LjE0KQo+ID4gSXQn
cyBzdGlsbCB1c2VkIGZvciBvdGhlciBib2FyZHMsIGNvdWxkIHlvdSBkZXRhaWwgd2h5IGl0J3Mg
bm90IG5lZWRlZAo+ID4gYW55bW9yZSwgc2luY2Ugd2hhdCB2ZXJzaW9uLCByZWZlcmVuY2Ugc29t
ZSBjb21taXRzID8KPgo+IFlvdSBhcmUgcmlnaHQsIGl0IGlzIG5lZWRlZC4gSSB3YXMgb25seSBm
b2N1c2VkIG9uIHRoZSB3b3JrYXJvdW5kIGZvciB0aGUgUEhZIHNpZGUsCj4gYnV0IHdlIGluZGVl
ZCBleHBsaWNpdGx5IG5lZWQgdG8gZW5hYmxlIHRoZSBNQUMgc2lkZSB3b3JrYXJvdW5kIHRvby4K
Pgo+IFNvIHRoaXMgbG9va3MgZ29vZCB0byBtZS4KClNhdyB0aGF0IHlvdSBhcHBsaWVkIGl0IHRv
IG1hc3RlciwgSSBqdXN0IHRlc3RlZCB0aGUgcGF0Y2ggb24gMTkuMDcsIHdvcmtzIGZpbmUKRG8g
eW91IHdhbnQgbWUgdG8gc2VuZCB0aGUgcGF0Y2ggYWdhaW4sIG9yIGNhbiB5b3UganVzdCBjaGVy
cnktcGljayBpdCA/CihnaXQgY2hlcnJ5LXBpY2sgMmE3NTE5ZTI5ZDZjYmJlMWViNzM2MjNlZjM1
YWRkMGVmNTk2ZmI1ZikKClRoYW5rcwpFdGllbm5lCgo+Cj4gQmVzdCB3aXNoZXMKPiBEYXZpZAo+
Cj4gPgo+ID4gVGhhbmtzCj4gPiBFdGllbm5lCj4gPgo+ID4+Cj4gPj4gQmVzdCB3aXNoZXMKPiA+
PiBEYXZpZAo+ID4+Cj4gPj4+ICAgICAgIGF0aDc5X2V0aDFfcGxsX2RhdGEucGxsXzEwMDAgPSAw
eDAzMDAwMTAxOwo+ID4+PiAgICAgICBhdGg3OV9ldGgxX3BsbF9kYXRhLnBsbF8xMDAgPSAweDgw
MDAwMTAxOwo+ID4+PiAgICAgICBhdGg3OV9ldGgxX3BsbF9kYXRhLnBsbF8xMCA9IDB4ODAwMDEz
MTM7Cj4gPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
