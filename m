Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41CE3C0FA
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 03:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcCLny9y61uJoLA6u3AAXjP2umEM7gi6O31o74SjUcI=; b=Ubrcag+8P2JNJA
	sOttyIqnkcZkXg0gxMUNUYtV6yzzV25hZ0raeu1FF/+DVYbS+jBKNuSxVQ23AJONAZ6a2F4fFLo5h
	cQ2wtUK8vtbW/cmSbS8x7R770mqytlwpUG5Noi6PE81kwsoMCZCzaJVWF+RNv8gjCyWkVRRyUuVg4
	luJjvclUu9gAiSCmQ8gQLGMt3M0u0S3GI3rnWhrMawYv9gwKR7Tius48YkeSnlqpQDyv+6Lqdxzc9
	7X/nVZ1LNVJjclH/rG3u8MoRXzsqafLnuvt1I3JNvxA6wY3oYvUFWLfHTi6891yha/SkUO68O8ZXX
	3CZjR39CmMRhWxxK5CQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haVll-0006Vt-Ud; Tue, 11 Jun 2019 01:40:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haVlZ-00064S-H2
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 01:40:03 +0000
Received: by mail-lf1-x142.google.com with SMTP id j29so7997255lfk.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Jun 2019 18:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LFJRnlpVK0rgiOj+BKlVb5+PBhD5QlHPUTcOqiaVOvw=;
 b=c1mo7vBDJYtou2E3t7r98n2wIwfMZ8AIX/fHmssjuL1Y9onkDP2IG2YS9eWzGnUkip
 rnehp0jCgOYe6NxAzBGsGiVAgy5z0QYS+Tle2t3F1Cj68LnRJN2FGJ/rnoRz8Ew89c6d
 OlgarimC8ZsMrhRePaUFtqPKvzAVMIfmjaAk3o4IzfoL9mz3kgwXJvdirI8s5A0z/Ldu
 6fk1RlG/7nw67ZeMtSxMiioefmYPPGp+Tk7q7EKIQdDb08ns+ch6xcyvR3/mXUk4fDU4
 M4eCdFG76ao8njNi4+bqgV7Tz00e3byrBF5ZF5vaP4lKE+GhfAsqbTeQwd8xSIMtBmcp
 15GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LFJRnlpVK0rgiOj+BKlVb5+PBhD5QlHPUTcOqiaVOvw=;
 b=CSQyXgBaHsMJu4F/4Z76xVoF+JZw4trepYztMiFhfjcCvC/Ah9HXfMuRVejXcWgKTp
 jIz5FYJVIljkWny6m77MmvYFozocNWhBaxrnmoHmMeSzFbnSEJMAfbAUbOaTLJhi7/FB
 XLMNm1Qdf4IACcscrkuJ6YOT0V8/J0YQe6xSrozqe6bllYR3t6CF3K6W83pGkGaxdAK6
 3ww93703qoonHCyk9fwoJasxvNscEPSiaZnYx9Z223L8Jm/68KKEtrNXuEF/vLfXTDeZ
 Yl4yyKhi4VmQxtxYVpuBrtkf/s6vx5Wj7qXWtdRpguMCkaPfOynE7UMtEaU/ciV4VeHs
 3vfg==
X-Gm-Message-State: APjAAAUJE4/19aj3oXZO+6b5gC6jBUaDH2p1cPWrbEsoCaz7lML16Xss
 i3nccyAHuDftl/3JMc6sNDU1FLdBpK5gQEQF+5A=
X-Google-Smtp-Source: APXvYqz6xqS073uEjVq4H9EHMZIIyygB9ruQ4QnTtNWKOFQbUBXLF12XNCpkrzXAjdjtf0xrrLYCoDQYXYLKNBQnFeo=
X-Received: by 2002:a19:24d5:: with SMTP id k204mr6119475lfk.190.1560217195525; 
 Mon, 10 Jun 2019 18:39:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190608155442.16632-1-yszhou4tech@gmail.com>
 <20190609123511.GA39806@meh.true.cz>
In-Reply-To: <20190609123511.GA39806@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 11 Jun 2019 09:39:44 +0800
Message-ID: <CAECwjAgRzSt0n3RRB8+Au1rL7_n1NQeoufUVoq++4bx_FV7Yaw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_184001_568803_50F259EB 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] generic: support
 mtd-mac-address-ascii
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

T24gU3VuLCA5IEp1biAyMDE5IGF0IDIwOjM1LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPgo+IFlvdXNvbmcgWmhvdSA8eXN6aG91NHRlY2hAZ21haWwuY29tPiBbMjAxOS0w
Ni0wOCAxNTo1NDo0MV06Cj4KPiBIaSwKPgo+ID4gSXQgc3VwcG9ydHMgZm9ybWF0cyBvZiBib3Ro
IDAwMTEyMjMzNDQ1NSBhbmQgMDA6MTE6MjI6MzM6NDQ6NTUKPgo+IG10ZC1tYWMtYWRkcmVzcyB3
YXMgcmVqZWN0ZWQgdXBzdHJlYW1bMV0sIHNvIEknbSBub3Qgc3VyZSBpZiB3ZSBzaG91bGQgYWRk
IG5ldwo+IGZlYXR1cmVzIHRvIGl0IGFuZCBwcm9tb3RlIGl0cyB1c2FnZSBhcyBpdCdzIHByb2Jh
Ymx5IGdvaW5nIHRvIG1ha2UgdGhlIHN3aXRjaAo+IHRvIHRoZSB1cHN0cmVhbSBwcm92aWRlZCBz
b2x1dGlvbiBoYXJkZXIgaW4gdGhlIGZ1dHVyZS4KPgo+IEFzIG10ZC1tYWMtYWRkcmVzcyB3YXMg
cmVqZWN0ZWQsIEkgd2VudCBhaGVhZCBhbmQgYWRkZWQgTlZNRU0gc3VwcG9ydCB0bwo+IG9mX2dl
dF9tYWNfYWRkcmVzc1syXSB3aGljaCB3YXMgYWNjZXB0ZWQgYW5kIHlvdSBjYW4gc2VlIGFscmVh
ZHkgd29ya2luZwo+IGV4YW1wbGUgaW4gbXkgc3RhZ2luZyB0cmVlIGluIHRoZSB3aXAvbnZtZW0t
bWFjLWFkZHJlc3MgYnJhbmNoLgo+Cj4gSW4gb3JkZXIgdG8gc3VwcG9ydCBNQUMgYWRkcmVzc2Vz
IHN0b3JlZCBpbiBBU0NJSSwgd2Ugd291bGQgcHJvYmFibHkgbmVlZCB0bwo+IGFkZCBzdXBwb3J0
IGZvciBtdWx0aXBsZSByZWcgdmFsdWUgcGFpcnMgaW50byB0aGUgbnZtZW0gY29yZSBhcyBzdWdn
ZXN0ZWQgYnkKPiB0aGUgbnZtZW0gY29yZSBtYWludGFpbmVyWzNdLgo+Cj4gT24gdG9wIG9mIHRo
YXQsIHdlIHdvdWxkIG5lZWQgdG8gYWRkIHByb3BlciBzdXBwb3J0IGZvciBudm1lbSBjZWxsc1s0
XSB1bmRlcgo+IE1URCBwYXJ0aXRpb25zLCBiZWNhdXNlIGN1cnJlbnRseSBpdCBkb2Vzbid0IHdv
cmssIE1URCBsYXllciBpcyBzaW1wbHkgdHJlYXQKPiB0aG9zZSBudm1lbSBjZWxscyBhcyBzdWIg
cGFydGl0aW9ucy4KPgo+ID4gU2lnbmVkLW9mZi1ieTogWW91c29uZyBaaG91IDx5c3pob3U0dGVj
aEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICAuLi5ldC1zY2hlZC1JbnRyb2R1Y2UtYWN0X2N0aW5m
by1hY3Rpb24ucGF0Y2ggfCAgMTggLS0tLQo+ID4gIC4uLmV0LXNjaGVkLUludHJvZHVjZS1hY3Rf
Y3RpbmZvLWFjdGlvbi5wYXRjaCB8ICAyMCAtLS0tCj4gPiAgLi4uL2dlbmVyaWMvaGFjay00Ljkv
MjIwLWdjX3NlY3Rpb25zLnBhdGNoICAgIHwgICAyICstCj4KPiBwcm9iYWJseSBzb21lIGxlZnRv
dmVycyBmcm9tIG90aGVyIHBhdGNoPwo+Cj4gMS4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9y
Zy9wYXRjaC8xMDg2NjI4LyMyMTU0NTYyCj4gMi4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9y
Zy9wcm9qZWN0L25ldGRldi9saXN0Lz9zZXJpZXM9MTA1OTcyJnN0YXRlPSoKPiAzLiBodHRwczov
L3d3dy5zcGluaWNzLm5ldC9saXN0cy9uZXRkZXYvbXNnNTcwMzE0Lmh0bWwKPiA0LiBodHRwczov
L2xrbWwub3JnL2xrbWwvMjAxOC82LzcvOTcyCj4KPiAtLSB5bmV6egoKSGksICBUaGFua3MgZm9y
IHRoZSBpbmZvcm1hdGlvbi4gIEkgd2lsbCBtYXJrIHRoZSBzZXJpZXMgYXMgY2hhbmdlcwpyZXF1
ZXN0ZWQgZm9yIG5vdyBhbmQgcmUtc2VuZCB3aGVuIHRoZSBudm1lbSBjb2RlIGlzIHJlYWR5LgoK
ICAgICAgICB5b3Vzb25nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
