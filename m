Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F130D103C85
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 14:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lP1hIkl4bJqMGNBRboyMhjHxwyG9t1Adzq4nca5Vy9g=; b=J0uT6A3JA6AtdW
	ezrqcHQeGz+N8UVB5Nk66pfEKnmWZlwPe5iHVP173REe79vf8HTYh6VzBLupkYGfpIwGq8CDfCqMY
	doDXG7bI0d0qQGOwM2lE3hAyw6dYzTvEJefRb/2KeE2x/XeKihWIh/fiQF+QsasbeSZsgqrgT7ZOT
	D/fJ2/1haQqzpSM995DXeb99llPL/LYgbtiASJ4SQREU7eS6996n+z9JS7ngkvUGRnBVOi6Lbpo3+
	OSFN+L5P1e1j7SKii+t1MUPlpzutkD94MaRwStlmYTqrxfwDIVjD5in87jJTQs/hqBsWLXIN09Emj
	VRnwzFy7aZEnzJ4r3VIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQJd-0000kt-SI; Wed, 20 Nov 2019 13:46:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQJT-0000k7-Cy
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 13:46:33 +0000
Received: by mail-lf1-x143.google.com with SMTP id d6so20236318lfc.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 05:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ca7Rnnr0jCPNXUF8qLpysDai4u5dYF9LhZZFbodnxaQ=;
 b=lcjhlfPmKmOcmeqf/kOfq0MKLDqldImbDfU8I7BJKLHyLITieSzxtHCc0pPKVVclGj
 KWZMTT2I89BHGQQ9VzIDSwdMssQpgAa7FZw3gCvlU7IFBAA46lx3t9iiTI28kIgtx8x4
 ULt+rtXSV7L9jEN+RaJ4LXjTcBQUaIGdoOijjxiBRe8kR2hSmMjBfKnmaTC3s6IRITB1
 gd9jna0OphPa3NP9uQJFp5ScdAkswF+PjpWADv6hLYJT/5qL8C0s9rpCWy+94p9zvwdp
 H/7xh0YJqElwuKvsxAgVghhw8ivMPsVW1jXtq2LgvI4gC8X0ajRcY1A9eGiCKVRlFe9U
 T5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ca7Rnnr0jCPNXUF8qLpysDai4u5dYF9LhZZFbodnxaQ=;
 b=n4MVb3csKJ9rqRreGaN8RjN7Pgh3YmskihjcnkZN0N8QQutjbAILu/zPrLcFOua8yW
 O//8dfUvSYfKxRGEhMPbKUdfgsFbh/7vRH5onN+C9isyIVzUAreil9iL2ESpinpCXssj
 jmdPA6Go+CcYhllR4YAqsxKDJ40lxuk5AV+6eeQIUeKGYRRpeiR5xMD7xFeWpmnqBjD3
 5kn3TE4MczzQEHLRpGGqpF7rGF+eN+Yfenk4JAFnYOUtjwlLGkMBk4AJe2gZs8j5Z/nB
 Go380Dv6dlmJqCAUbz0fn2jKd4Q4uNYOmLFZ9su5Z6bBFthLwkBZWIOmyXe6HJ37dyic
 cdWg==
X-Gm-Message-State: APjAAAVbosh9yFSpYIzOVVFj03mb3mdFp6T1dT5Tfno98Ab9VZnlBeuq
 7CK9qrWKMIcXd8xQhn7RUo9lQ+O3Gchy9Mm0Em2TiHK2
X-Google-Smtp-Source: APXvYqzMIdqysE8vILEupn4USZR+MMgMr+U+Q4kHjRmp+b4myAqpK9zbi68v0RuPUyrPm+gR4JzlXlWFN4m1nqMmGZM=
X-Received: by 2002:ac2:57cb:: with SMTP id k11mr2900936lfo.87.1574257589241; 
 Wed, 20 Nov 2019 05:46:29 -0800 (PST)
MIME-Version: 1.0
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-10-ynezz@true.cz>
 <CAECwjAio8nAN6ojR4r_7XGZyxuX-e=oYXN7WRkXtBOXy_yanTw@mail.gmail.com>
 <20191120133305.GD52387@meh.true.cz>
In-Reply-To: <20191120133305.GD52387@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 20 Nov 2019 21:46:17 +0800
Message-ID: <CAECwjAh5O9U=H=P7tZUVH1PBpWmyFcLCsp6GG315m5wafGYn_g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054631_461654_C17228D7 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH libubox 9/9] avl: guard against
 theoretical null pointer dereference
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

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAyMTozMywgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBZb3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4gWzIwMTkt
MTEtMjAgMjA6MzM6MDZdOgo+Cj4gSGksCj4KPiB0aGFua3MgZm9yIHJldmlldyEKPgo+ID4gVGhl
IGZpcnN0IGNoZWNrIChub2RlLT5sZWZ0ID09IE5VTEwgJiYgbm9kZS0+cmlnaHQgPT0gTlVMTCkg
aWYKPiA+IG1hdGNoZWQsIHdpbGwgcmV0dXJuLgo+Cj4gWW91IGNhbiBzZWUgdGhlIGNvZGUgcGF0
aCBsZWFkaW5nIHRvIG51bGwgcG9pbnRlciBkZXJlZmVyZW5jZSBmb3IgeW91cnNlbGZbMV0uCj4g
SSB3aXNoLCB0aGF0IGFuYWx5emVyIGNvdWxkIG91dHB1dCB0ZXN0IGNhc2UgZGlyZWN0bHkgOi0p
IEkgd2FudGVkIHRvIHdyaXRlCj4gdGVzdCBjYXNlIG15c2VsZiBpbiBvcmRlciB0byB2ZXJpZnkg
aXQsIGJ1dCBpdCdzIHF1aXRlIHRpbWUgY29uc3VtaW5nIHNvIEkKPiByYXRoZXIgZGVjaWRlZCB0
byBtb3ZlIG9uIHdpdGggdGhpcyBzaW1wbGUgc2lsZW5jZXIuCj4KPiAxLiBodHRwczovL3luZXp6
LmdpdGxhYi5pby8tL29wZW53cnQtbGlidWJveC8tL2pvYnMvMzU1MjMwMTQxL2FydGlmYWN0cy9i
dWlsZC9zY2FuLzIwMTktMTEtMTktMTYzNzA4LTIwMy0xL2luZGV4Lmh0bWwKClRoZSBncmFwaCBp
cyB2ZXJ5IGltcHJlc3NpdmUuICBJdCByZXF1aXJlcyB0aGUgZmlkZGxlciB0byBmaXJzdCBwb2lu
dApub2RlLT5wYXJlbnQgdG8gYSBzdHJhbmdlciB3aG9zZSBsZWZ0IGFuZCByaWdodCBjaGlsZHJl
biBhcmUgYm90aCBub3QKbm9kZSBpdHNlbGYgOykgIEluIHRoYXQgY2FzZSwgSSBwcmVmZXIgdGhl
IHByb2dyYW0ganVzdCBzZWdmYXVsdC4gIE5vCndheSBpdCBzaG91bGQgY29udGludWUgb3IgcmVj
b3Zlci4KCiAgICAgICAgICAgICAgICB5b3Vzb25nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
