Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F4C17B6ED
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 07:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4v7+K/7onmjlll22a0vBs5xNODic4YwI3+Zbm5WIdtY=; b=WjClyY2PoTo4Kf
	l0u0+4a0d7+z6mRELCw5nlnjRyLqVR67fvOPyWiotl4YZlOR9EKLJzjqttYpj5XnRb/Kpvc+D3FxA
	rihoDambHhUK8sCasoSgmHfvKEn08WnOoHZ2TW5xsiCaxMpYT7GopyJG6Smt/ET2U2s8gasxWSRsj
	UpSibEpcDQELpIKT0LJXdb6tbppfXD7aUY4kzwwPkBKtp1qWTg1gTol9SIj9CMtyvrqG9QNxeAIkV
	XWfgqkYIQI/vi4+TW76RYeEVNQb5+Sas8hK9zuQfjel6a3n+ZVJbWRUvm2YHciOLGimMl8wU/LKou
	MZsCWNjsrFpYdf7rbclQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6go-0002Xj-L4; Fri, 06 Mar 2020 06:42:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6gf-0002X7-00
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 06:42:22 +0000
Received: by mail-lf1-x141.google.com with SMTP id v6so945840lfo.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 22:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5pd+zroZLjjZBaG39kRM27nMbTImTQdDXmEzEpo+VLg=;
 b=hG27C27hCADEfIjhpapy1GvKCqhN9QAN+Z8F3qRnjAHCcQ6YTyX7X734Ysl3j29gR0
 WP1VbedpZ2VuK0Ck9w3LRgnRHUAA3X//A/Z02AOFqmwogLme6i7pVTBrnsVwfVd7FCDD
 0v86MCrh55OzBieUblebrPp9qza33+eaR7ZwR6NzQXeU/jq44qyon91iLGyYzUIxLRUg
 1Tbwd4/xmMpayK8MyfPxXDSH9v/x0rasat9rr27HTCec+fx4i0kzY3vob+BskPp+/0a1
 e2zMmt6iV0CLJAo8JiKZrlph5M+l5XomMgcJjaAkemqJjF6fT0u4vPLje/qqxvxuUAMl
 N9AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5pd+zroZLjjZBaG39kRM27nMbTImTQdDXmEzEpo+VLg=;
 b=TGxNkUL9pEwRyEwB3WAKhSfH2DHpIXReprGjgnLpyDPHZR7zZhOYuC/2g2NSVhmIcp
 8WvkQswJ1rAMc789vJqW8hoxTmtp0J1h8mtS/LG1rVzRsNikInJQoR9OgEi+TVs9FyEL
 I3bqqilYm7aa/DW0Ds74qTfKKDFbxPzNbrgEeJbE4IhrkadhdQkCCWKB/oQcVRU07Ewi
 serDg4QstfHMduOJxcIQTZjnZfn7qcFXIEuZKCqHGvqD1TyL0EIP23V8HTBuVSF2SbJx
 LrczAhh8TeZrfBh6w8Z+tFb75NfA4veumogCgpfzaR0CckbCaxBxZmGetzCD862SMasX
 E2bg==
X-Gm-Message-State: ANhLgQ0LsLSv4JPEZBsq7aV524UHufJLfVcgq5IWKeMSFACm+GJCTEoL
 KGDD/NLRM3RITIEgNqH8V+XzoKKWgqrayJvrgPcfIbMD9KQ=
X-Google-Smtp-Source: ADFU+vsdIq1xyKSJ3R52te5ZQkSKNWnrAF8Bv5vXSZTz5FgpG0tJeNVZjg3XK/foxdgciryMXpfNuiu1BnK05DHac+Y=
X-Received: by 2002:a19:6406:: with SMTP id y6mr955846lfb.125.1583476939049;
 Thu, 05 Mar 2020 22:42:19 -0800 (PST)
MIME-Version: 1.0
References: <20200305114621.31104-1-ynezz@true.cz>
 <CAECwjAi2BcdXTE4YgpDROY0Mjs_CeYOgwruFdZuPKFsgFjSPZA@mail.gmail.com>
 <20200305124334.GC86312@meh.true.cz>
In-Reply-To: <20200305124334.GC86312@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Fri, 6 Mar 2020 14:42:07 +0800
Message-ID: <CAECwjAhkv87wWkb89xzgOi_atpcTYLwz+0DtaJkQ3u9eB5Qh_g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_224221_063540_22E41206 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] malta: fix missing watchdog dependency
 in hwmon-sch5627
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

T24gVGh1LCA1IE1hciAyMDIwIGF0IDIwOjQzLCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPgo+IFlvdXNvbmcgWmhvdSA8eXN6aG91NHRlY2hAZ21haWwuY29tPiBbMjAyMC0w
My0wNSAxOTo1Njo0MF06Cj4KPiA+ID4gRml4ZXMgZm9sbG93aW5nIGVycm9yIHVuY292ZXJlZCB3
aGlsZSBidWlsZGluZyBtYWx0YS9iZSBvbiA1LjQ6Cj4gPiA+Cj4gPiA+ICBQYWNrYWdlIGttb2Qt
aHdtb24tc2NoNTYyNyBpcyBtaXNzaW5nIGRlcGVuZGVuY2llcyBmb3IgdGhlIGZvbGxvd2luZyBs
aWJyYXJpZXM6Cj4gPiA+ICB3YXRjaGRvZy5rbwo+ID4gPgo+ID4gPiBUaGF0IGRlcGVuZGVuY3kg
d2FzIGludHJvZHVjZWQgaW4gdXBzdHJlYW0gdmlhIDJkOGM3ZmY1MmMyNAo+ID4gPiAoImh3bW9u
L3NjaDU2eHg6IERlcGVuZCBvbiB3YXRjaGRvZyBmb3Igd2F0Y2hkb2cgY29yZSBmdW5jdGlvbnMi
KSBpbgo+ID4gPiB2My41Lgo+ID4KPiA+IERvZXMgaXQgbWFrZSB3ZSBhY3R1YWxseSBwYWNrYWdl
IHdhdGNoZG9nLmtvIGFzIGEgbW9kdWxlPwo+Cj4gVGhlIHByb3Bvc2VkIHBhdGNoIGFkZHMgdGhh
dCB3YXRjaGRvZyBjb3JlIGFzIGJ1aWx0LWluLCB0aGF0IG1pc3NpbmcgZGVwZW5kZW5jeQo+IGVy
cm9yIGlzIHByb2JhYmx5IG1pc2xlYWRpbmcsIGhhdmluZyB0aGF0IHdhdGNoZG9nIGNvcmUgYnVp
bHQtaW4gaXMgZ29vZAo+IGVub3VnaC4KPgo+IC0tIHluZXp6CgpNeSBjb25jZXJuIGlzIHN0aWxs
IG9uIGltYWdlIHNpemUgd2hpY2ggbWFsdGEgY2FuJ3QgY2FyZSBsZXNzIGFzIHdlCm1vc3RseSAo
aWYgbm90IGFsd2F5cykgcnVuIGl0IGFzIHFlbXUgdmlydHVhbCBtYWNoaW5lLgoKQXMgZm9yIG90
aGVyIHRhcmdldHMsIGlmIGl0J3MganVzdCBrbW9kLWh3bW9uLXNjaDU2MjcsIHdlIHNob3VsZApw
YWNrYWdlIHdhdGNoZG9nLmtvIHNlcGFyYXRlbHkgaW5zdGVhZCBvZiBtYWtpbmcgaXQga2VybmVs
IGJ1aWx0aW4sIHRvCnNhdmUgc3BhY2UuCgpSZWdhcmRzLAogICAgICAgICAgICAgICAgeW91c29u
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
