Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F32145D6
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 10:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/osD8O0Ln98cyEfi3ZTwQnz7Rpc5cdQ3BekBiR5JVPo=; b=NT7Psg3bbBhVVF
	svNRlIN2U/ZHuAhLfX327+E+2twQl+3hxPAtRMApgsTPrTcaQaP7nIqZNsQzfMHDc4QEK+QdxbOSR
	kKKS2/dYpq8NMhRn7ks6bWsiF391EcZDrpUWFolaslHAQs8QXZn9Ny+L7qUJzWI3u4KATZP+M5sI7
	PMh9I9cm6gAj2VxjFNmFkIhzXw5qwqUCM/ZA/eTEB4BNkt2+Zkx4gvvL2ucf1l1p4QE98eUwH2M5c
	3PXBzlgqGlKF3UC7NT2Ch/9iKUFPFeA5PdWWeSfiIWwM2jWnk/Da2h7FFFZBZbpVU4qcxY3HaGBS9
	ECaZMOxiY1ZOMOrTgeDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYla-0000tr-8T; Mon, 06 May 2019 08:14:30 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYlR-0000tU-RL
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 08:14:23 +0000
Received: by mail-oi1-x236.google.com with SMTP id m204so3234672oib.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 May 2019 01:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8ak/2LYs8C6++YBminDK76zkcKm7TrwHzVXdgHdKyHw=;
 b=I6SNBCOdJfSe4SVSLW0xJwWxDU5kZzH4SCGkr8thUVM02SjJoIwsgAFcNurqg6IaBj
 f7FmXeXFpjjp7wdeMTS1BQzuyNzlAUB5L4wnizdVjIQHPdHCD5ojiglokol7vBbY+Ehc
 rWfcf4SJWlkIJJeQ+J2TtGIhmpYBJdqKKKerwfL5bq5JxX/M67BP6iNlAVt7wXzc48++
 7yyXOJzVFkqxaHbUaWCeCHemPNH1lGjd9uZU6wCk7Eu+Ldji60p6owv3jVQ6d6vkpHJ2
 zN6/CfMtvH4V5jt+nQFLPq6KaBjxuSW6jeSJuCXy6CxnJZDh+3COqM2vygSojUzFQ6nh
 a8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8ak/2LYs8C6++YBminDK76zkcKm7TrwHzVXdgHdKyHw=;
 b=cNzmjQchMAw1fjMkJtbSWBqMQyOL9MMPC1zwmDIWnQYsyBTvj/7NAGqRFNeryE7ta7
 A8OIH04Y676m1MrmnBy3Sfh60jJbwqhGL1DX+vjhWwLRdeheX0Df8kFOw69OS2mz6dCD
 XDPz0OrfyuD9hhlCRDNMdkIWW8k4JP//Ec6gx6dxrHRUNV2WVvSfXh26khhVeRXs5Zwu
 9gETbjo2GPKRZL4G0L3an76OF2UsTF7CJL1sGdODT6VADjOEvZtDBqNB6beeANhXzhbT
 zm/SlETtGaAxhuXSn3TgSX6otOE/EOI6n0mEwOp94LEYJDfOal0SCp+gWTykbitqlc0H
 pRZg==
X-Gm-Message-State: APjAAAV1w9VE3fkM/I2XNF4vnOMMlcNWi0WvNlAqIiEBWpRWXfyWFYaW
 yfMeyJ3EepQxboFf8jDpjOgqkzGSpkIU7JcX+S78dA==
X-Google-Smtp-Source: APXvYqyx2bQ+TgO/vTTlPWLteSTNNsEyohK/nS6dfHg2l5Wq9akvBrAsYr3oGZ4YIbAecbVjfvXoLYRqHz7DDGLgHpc=
X-Received: by 2002:aca:b50b:: with SMTP id e11mr353577oif.51.1557130460528;
 Mon, 06 May 2019 01:14:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
 <20190503163247.GF71477@meh.true.cz>
 <CAKfDRXghj-ymqjT01cNvwXa-w=mWDK38wxFfROgLvx1XjKcw5Q@mail.gmail.com>
 <20190505202609.GC81826@meh.true.cz>
In-Reply-To: <20190505202609.GC81826@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Mon, 6 May 2019 10:14:09 +0200
Message-ID: <CAKfDRXjzx2miRysf+uHwdPkB6JV1ULsDPn2vuLadQET27Kokzg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_011421_896458_1473BE47 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

SGkgUGV0ciwKCk9uIFN1biwgTWF5IDUsIDIwMTkgYXQgMTA6MjYgUE0gUGV0ciDFoHRldGlhciA8
eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gVW5mb3J0dW5hdGVseSBubywgYnV0IEkndmUganVzdCBw
cm9wb3NlZFsxXSBzb21lIHRlbXBvcmFyeSB3b3JrYXJvdW5kLCBzbwo+IGxldCdzIHNlZSBob3cg
dGhpcyBwYW5zIG91dC4gVW50aWwgaXQncyBhY2NlcHRlZCwgSSB3b3VsZCBzaW1wbHkgZ28gd2l0
aCB0aGF0Cj4gcHJvcG9zZWQgYEZFQVRVUkVTICs9IHJhbWRpc2tgIGJhc2VkIHNvbHV0aW9uLgo+
Cj4gMS4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53cnQtZGV2ZWwv
MjAxOS1NYXkvMDE2OTMxLmh0bWwKClRoYW5rcy4gSSBoYXZlIHRlc3RlZCB0aGUgc2VsZWN0aXZl
LXJhbWRpc2sgYXBwcm9hY2ggd2l0aCBIRFJNMjAwIGFuZAppdCB3b3JrcyBmaW5lLCBidXQgc2lu
Y2UgaXQgaXMgbm90IG1lcmdlZCB0aGVuIG15IGN1cnJlbnQKdjMtc3VibWlzc2lvbiBzZXRzIHRo
ZSByYW1kaXNrIGZlYXR1cmUuCgo+IEl0J3MganVzdCBhIHBvb3ItbWFuJ3MgcmVwbGFjZW1lbnQg
Zm9yIGEgcGljdHVyZSBvZiBzY2lzc29ycywgbWVhbmluZywgdGhhdAo+IEkndmUgc2ltcGx5IHJl
bW92ZWQgc29tZSB0ZXh0IGFyb3VuZCB0aGlzIGAuLi5gIGxpbmUuCgpBaGEsIEkgc2VlIDopCgo+
IEJUVywgSSBoYXZlbid0IGhhZCB0aW1lIHRvIGNoZWNrIGNvcnJlY3RuZXNzIG9mIHRoaXMgcGlu
Y3RybCB5ZXQsIGJ1dCBJJ2xsIGRvCj4gc28uCgpPaywgSSB3aWxsIHdhaXQgd2l0aCBzdWJtaXR0
aW5nIGEgdjMgdW50aWwgeW91IGFyZSBkb25lIHdpdGggdGhpcy4KCkJSLApLcmlzdGlhbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
