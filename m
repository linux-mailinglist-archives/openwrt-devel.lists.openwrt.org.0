Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CBD2D3C8
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 04:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3lEtn9qdAPYkFTls3yT0rkLxfFvNyAgPQT8cSv8GtA=; b=hzJDPNscXQOWsF
	t3pY3FWCitSzQHsfa1ACx7w+iL6fQSzCQ9ne25HdGINmK5UuKaA8px26A9y7mZRX2zCwAZU5b6iau
	24zrs/7kjFJG7+L3qvbNMqx9xGzgD3XcYhCFWuZeRPS9pkV+0zk9PcAqWciLCadDRJJbPNvnHRPGb
	yYhJcTMNdS/16ZZL96YgCbzplPzhvjDG8NIpcMtlypUSsnvJSsmIYMVtZCjYomMYglXQG2YJgAdc4
	e83RHfiCHIbnoeBmjjt5vmLdNNPpNogvhttJjTIELV82cynBeEu+K1Z3rp8OMcBGo4XjQh9bmN1fK
	wLqrAQmKw+T974Zmsxfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoJL-0006fO-8o; Wed, 29 May 2019 02:27:27 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoJE-0006f5-Kr
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 02:27:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id y13so641054lfh.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 May 2019 19:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y+PqjqQM6AEgxhYAcdqq4HZ728MoH9Lu6UfaaBPbM6o=;
 b=qd0uha9CPA5s7YabEvqBlxT0ULG47YauFh3gfhG31hQkzcB4a7ACcEMU2Z/9HMfNmy
 WJQBWuTpL795ZrG4S2rJD0whY1qme+yf6vuuoOJe86v14nlNy2QNyqCaG1lIzOXXkluY
 hSW8VZp1BT47w7aMTJ/neUFFpxUzbW0dohD6OzAv2tCcwS7C8KfNB3CEwjipXW3UhQtF
 E2F+71nBzSi33Zm94xhGjztGhoUbbZBqGEbv54dVJqdnrEaImGCDYbyeMJ03U1yljhLU
 b2cFzBhI7TVSclRakwewAfpITf2C43byTecFGGvnI5bWHJ4LKt4oBA8qL7iY9SVc0EcC
 l/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y+PqjqQM6AEgxhYAcdqq4HZ728MoH9Lu6UfaaBPbM6o=;
 b=P91Nn66u2r9OxPF3ZU7HrPJHXRpUB8oXDOXxuvJf1NXNfMXto0cQVgprZILSNYOZ5T
 MElEa8XBICZ/TcuIeroiR7QbgJ2Cki7IiLW+9gFPzkNv8QYOIukZGtJel/elabBCaugf
 AcjVJoGDhyWN8v/lDgCXugBvQz7v/nqrmtcZREgECZ1D05aFuyDYhEcwAy2ZlrqKcspx
 YGVdMuBrD4btnvApX6x7RNie2tAu5XVuE3AugxiSMuJ98uI2W9kAxq/pQ6mWjygjNqMO
 50m4kaBUwQ4tyC2lwmkJkSjTFSzLrnOf88seDsG9pv+NAd/QjGJcJeb5o1Iw9N8Aa+3+
 lKNw==
X-Gm-Message-State: APjAAAViK2OTTfBinGFqYcnJAuPDJjp2QHiCBSApGEkoxF2OcfwVKcD0
 /QZdhK2MunYuH97qxS2xrx/xMYk7p6RDpAAWH5o313RJ
X-Google-Smtp-Source: APXvYqxWNEHpcZok2uoFeHF15UspezIDZJKRgroQkuENE0vdT73Vw+gcOSjANwBaUerzGlwP1KYAAg+Mmq8V2hGovKg=
X-Received: by 2002:ac2:44b1:: with SMTP id c17mr12393878lfm.87.1559096839148; 
 Tue, 28 May 2019 19:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <1558992584-11997-4-git-send-email-ynezz@true.cz>
 <CAECwjAjknY85+YOn07o6ixHkODkkE+85GrMn016ZUESq3EAfMg@mail.gmail.com>
 <CAOdf3gob-vWdvHNiQfEcGOem0D68rGZXNe53nZc7WqH8vJxUkQ@mail.gmail.com>
In-Reply-To: <CAOdf3gob-vWdvHNiQfEcGOem0D68rGZXNe53nZc7WqH8vJxUkQ@mail.gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 29 May 2019 10:27:07 +0800
Message-ID: <CAECwjAj2vdeEYwhOqkp=yBV3fzbuk4AMq5Yz8m61rFT+WOW9=w@mail.gmail.com>
To: Etienne Champetier <champetier.etienne@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_192720_684374_FF06997D 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] base-files: move urandom seed bits
 into separate package
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
Cc: Stephan Mueller <smueller@chronox.de>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAyOSBNYXkgMjAxOSBhdCAwNToxNywgRXRpZW5uZSBDaGFtcGV0aWVyCjxjaGFtcGV0
aWVyLmV0aWVubmVAZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIFlvdXNvbmcsCj4KPiBMZSBtYXIu
IDI4IG1haSAyMDE5IMOgIDA5OjAxLCBZb3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNv
bT4gYSDDqWNyaXQgOgo+Pgo+PiBPbiBUdWUsIDI4IE1heSAyMDE5IGF0IDA1OjMwLCBQZXRyIMWg
dGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPj4KPj4gLi4uCj4+Cj4+ID4gKwo+PiA+ICtz
YXZlKCkgewo+PiA+ICsgICAgdG91Y2ggIiQxLnRtcCIKPj4gPiArICAgIGNob3duIHJvb3Q6cm9v
dCAiJDEudG1wIgo+PiA+ICsgICAgY2htb2QgNjAwICIkMS50bXAiCj4+ID4gKyAgICBnZXRyYW5k
b20gNTEyID4gIiQxLnRtcCIKPj4gPiArICAgIG12ICIkMS50bXAiICIkMSIKPj4gPiArICAgIGVj
aG8gIlNlZWQgc2F2ZWQgKCQxKSIKPj4gPiArfQo+Pgo+PiBNYXliZSB3ZSBjb3VsZCBwcmVwYXJl
IHRoZSAudG1wIGZpbGUgaW4gL3RtcCBvZiB0bXBmcyB0eXBlLCB0byBzYXZlIGEKPj4gZmV3IHJv
dW5kcyBvZiBub3IgZmxhc2ggd3JpdGVzLgo+Cj4KPiBUaGUgaWRlYSB3YXMgdG8gYmUgYWJsZSB0
byBkbyBhdG9taWMgbXYKCkdldC4gIFRoYW5rIHlvdSBmb3IgdGhlIGV4cGxhbmF0aW9uIDspCgpS
ZWdhcmRzLAogICAgICAgICAgICAgICAgeW91c29uZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
