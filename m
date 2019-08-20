Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367EA96B54
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 23:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYSHVLB/x0ELS0BzZL9kjXNSb7w0qf7pMuyEgLHNqt4=; b=a/TUyIuH183rty
	ryFes5d5lM6pW9aLFopTVu7slyLSZ5uHEtK1IxPnmhpBCUlxzHzGUVTYZnsqX/bmGCmKVifNzhX72
	A92TaW0shN4og3NdchSYjuRvKllvbrZEyoIl5HvZo8RAqzRjFhawuQYa3xvXb5MXTnJdWlhDpfuI9
	bskywqHt5kG4ui4abDgfJYszgL8gCyT5a4PKfxxEHGXuPF0VOJJ+WJg8zdJvebbR9WSugMig9chFk
	Nai8l3dW4B0aMbH5DAr7Ijiqtk3koPqmzlZBB3zBe6+pl95apsaZXvMde9XvnNmuvMFpPNpx8A/Wf
	F+lzcTTebudvCegKbvqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BY3-0004HM-FN; Tue, 20 Aug 2019 21:20:11 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BXw-00037k-4Y
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 21:20:05 +0000
Received: by mail-qk1-x734.google.com with SMTP id p13so5808361qkg.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 14:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=wTdl51tlyKPlHwzBq0jKYGdEWCAiJkf4ZlPi0MDuo2E=;
 b=J+r+T0u3dh1XBoz1xb6s4zU6mRfr1XdlS6043qOjHcrfkCPD8goqF/ziiMCzICjapJ
 a0Df84UmQTkAbM39oAA9JcpgjjEjJuT7RHRzgjqGwY3DNEjHKlxXJu5DvNAV30au+3Dk
 XpQ/k1aB9Z3ec8Nsqgsejtpdyis+nsXxs+SOSpwp0Up7bxfddnCwZ+uSO/p7+TOM7U9D
 JqBCHfN5SnQS2fefaLc5RZVs30/c01FnkGqOmoW3mXodKwCZn2mBWF9zox1xLn4df6b2
 Lqfip9EK80J+2dG+kQYZgxUY7y27gTRWPzf0AhHzYxoZeW56CWx0Rr8lUYiBURVwjazE
 nkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=wTdl51tlyKPlHwzBq0jKYGdEWCAiJkf4ZlPi0MDuo2E=;
 b=KZuvgxwhWnZ9wM4KyVW7QxFpKEJ+gPnFU/cETMwJ6fHpxl6Y+Ns8omWeQIEthAq9GY
 5haSr/+ts1WQVC/Mm82svJXx09YeudJ29OqHPr57NOL94x6GYBrDeS8zDTRCPpdOdbSS
 CARnYlUFMyTfM+1EY5Es1dtbX4nZJnCUSZdmJqUdUMC4oLieNbGYtxU8JKq+ND8FlkkO
 QbyNG9qy9nmR/CwmgapFPU7pKdnOFmJ4TvBol6MEI+BqRHs9QHc6VnlzZF7GLt0AgcOl
 tKdhkpe+WQg3nKb4834p7rlgGE9mmEp5QNXSZFwndCuBlj3hZoDZXNvLGW6bHs4MF3Q+
 D8eg==
X-Gm-Message-State: APjAAAXiVpNKGx7YbyHwwe/wsorydRr0Z65oQqrGW0XA5lHmoH5MuiAx
 qppbDDXpyCw48w6gfQnSbP4=
X-Google-Smtp-Source: APXvYqxsWce0/VLk5h7owkAnkLqyc63Xm6HgjVbEXxkwA/9iETVZiiG5WjxQfag92DSoh4mDk1uY8A==
X-Received: by 2002:a37:a94c:: with SMTP id s73mr28476358qke.113.1566335999428; 
 Tue, 20 Aug 2019 14:19:59 -0700 (PDT)
Received: from richs-mbp-10337.lan ([70.16.98.90])
 by smtp.gmail.com with ESMTPSA id z186sm9600425qkb.2.2019.08.20.14.19.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 14:19:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Rich Brown <richb.hanover@gmail.com>
In-Reply-To: <CANoib0FaZNd4eBQY65P0nuUzOmpv7RKkGLmU+SXO4NEmSn0SBw@mail.gmail.com>
Date: Tue, 20 Aug 2019 17:19:58 -0400
Message-Id: <178FDDAC-A0CD-4FC3-B8F7-642067E9FFD1@gmail.com>
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
 <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
 <CANoib0FaZNd4eBQY65P0nuUzOmpv7RKkGLmU+SXO4NEmSn0SBw@mail.gmail.com>
To: Dmitry Tunin <hanipouspilot@gmail.com>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_142004_216848_4BDA162B 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RG1pdHJ5LAoKPiBPbiBBdWcgMjAsIDIwMTksIGF0IDExOjU4IEFNLCBEbWl0cnkgVHVuaW4gPGhh
bmlwb3VzcGlsb3RAZ21haWwuY29tPiB3cm90ZToKPiAKPiBSaWNoLAo+IAo+IE9wZW5XcnQgaXMg
YSBMaW51eCBkaXN0cm8uIEl0IGhhcyBhbGwgc2VjdXJpdHkgYXMgYW55IG90aGVyIG9uZS4gQWxs
Cj4gQ1ZFIGFyZSB0aW1lbHkgYWRkcmVzc2VkLgo+IFRoZXJlIGlzIG5vIG5lZWQgZm9yIHNwZWNp
YWwgdGVzdHMuCgpZZXMsIGJ1dC4uLiBWaXJ0dWFsbHkgYWxsIHRoZSBvdGhlciB2ZW5kb3IncyBm
aXJtd2FyZSBhcmUgIkxpbnV4IGRpc3RybydzIiBhcyB3ZWxsLiBBbmQgaWYgSSB1bmRlcnN0YW5k
IHRoZSBDSVRMIHNjYW4gcHJvY2VzcywgaXQgc2hvd3MgbG90cyBvZiBiYWQgYnVpbGQgcHJhY3Rp
Y2VzIGluIHRoZSB2ZW5kb3IgZmlybXdhcmUgc291cmNlIGNvZGUuCgpDYW4gYW55b25lIHNwZWFr
IHRvIHdoZXRoZXIgT3BlbldydCBidWlsZHMgdXNlIGFueS9hbGwgb2YgdGhvc2UgdGVjaG5pcXVl
cyBjYWxsZWQgb3V0IHRvIHByb3ZpZGUgYWRkaXRpb25hbCBzZWN1cml0eT8gT3BlbldydCdzIG1v
ZGVybiBrZXJuZWwgcHJvdmlkZXMgYSBidW5jaCBvZiBzZWN1cml0eS4gVGhhdCBtYXkgYmUgZ29v
ZCBlbm91Z2gsIGV2ZW4gaWYgYnVpbGRzIGRvbid0IHVzZSBhbGwgdGhvc2UgdGVjaG5pcXVlcy4g
QW5kIGlmIHdlIGhhdmUgaW1wbGVtZW50ZWQgdGhlbSwgd2UgY2FuIGZ1cnRoZXIgZGlmZmVyZW50
aWF0ZSBvdXJzZWx2ZXMgZnJvbSB2ZW5kb3IgZmlybXdhcmUuLi5UaGFua3MuCgpSaWNoCgoKPiDQ
stGCLCAyMCDQsNCy0LMuIDIwMTkg0LMuINCyIDE4OjM0LCBSaWNoIEJyb3duIDxyaWNoYi5oYW5v
dmVyQGdtYWlsLmNvbT46Cj4+IAo+PiBIaSBWaW5jZW50LAo+PiAKPj4gSSBkb24ndCBrbm93IHdo
ZXRoZXIgdGhlIGFydGljbGUsIG9yIGl0cyB1bmRlcmx5aW5nIHJlcG9ydCBmcm9tIEN5YmVyIElu
ZGVwZW5kZW50IFRlc3RpbmcgTGFiIC0gQ0lUTCwgaXMgYSBqb2tlIG9yIG5vdC4gKEFsdGhvdWdo
LCBJJ2xsIGFncmVlIHRoYXQgYW55IGZpcm13YXJlIHVzaW5nIDE4LXllYXIgb2xkIGtlcm5lbHMg
aXMgb24gaXRzIGZhY2UgYSBzZWN1cml0eSBqb2tlLikKPj4gCj4+IE15IHF1ZXN0aW9ucyB3ZXJl
IG1vcmUgYWJvdXQgT3BlbldydC4gSG93IHdvdWxkIG91ciBjdXJyZW50IGJ1aWxkcyBzdGFjayB1
cCB1bmRlciB0aGUgY3JpdGVyaWEgdXNlZCBpbiB0aGUgcmVwb3J0J3MgdGFibGU/IEl0IGxpc3Rl
ZDoKPj4gCj4+IC0gU3RhY2sgR3VhcmRzCj4+IC0gQVNMUgo+PiAtIFJFTFJPCj4+IC0gRm9ydGlm
eSBTUkMKPj4gLSBOb24tRXhlYyBTdGFjawo+PiAKPj4gQW5kIGFyZSB0aGVyZSBvdGhlciBzZWN1
cml0eSBwcmFjdGljZXMgdGhhdCB3ZSBlbmZvcmNlIHRoYXQgd291bGQgbWFrZSBhbiBPcGVuV3J0
IHN5c3RlbSBtb3JlIHNlY3VyZT8KPj4gCj4+IElmIE9wZW5XcnQgY29tcGFyZXMgZmF2b3JhYmx5
LCBpdCBvY2N1cnMgdG8gbWUgdGhhdCB3ZSBjb3VsZCBpbnZpdGUgQ0lUTCB0byByZXZpZXcgT3Bl
bldydCBidWlsZHMgKG9uIGh1bmRyZWRzIG9mIHJvdXRlcnMpIGFuZCB1cGRhdGUgdGhlaXIgcmVw
b3J0Li4uCj4+IAo+PiBUaGFua3MuCj4+IAo+PiBSaWNoCj4+IAo+Pj4gT24gQXVnIDIwLCAyMDE5
LCBhdCA5OjQzIEFNLCBWaW5jZW50IFdpZW1hbm4gPHZpbmNlbnQud2llbWFubkBpcm9uYWkuY29t
PiB3cm90ZToKPj4+IAo+Pj4gSGkgUmljaCwKPj4+IAo+Pj4gdGhlIGFydGljbGUgaXMgYSBqb2tl
LiBJJ20gbm90IHRhbGtpbmcgYWJvdXQgdGhlIHJlc2VhcmNoZXJzLCBidXQgYWJvdXQgY2l0aW5n
IGEgc3RhdGVtZW50IGxpa2U6Cj4+PiDigJ5Ib3dldmVyLCB0aG9zZSBzYW1lIGZpcm13YXJlIGJp
bmFyaWVzIGRpZCBub3QgZW1wbG95IG90aGVyIGNvbW1vbiBzZWN1cml0eQo+Pj4gZmVhdHVyZXMg
bGlrZSBBU0xSIG9yIHN0YWNrIGd1YXJkcywgb3IgZGlkIHNvIG9ubHkgcmFyZWx5LOKAnAo+Pj4g
Cj4+PiBMb29rIGF0IHRoZSBzb3VyY2UtY29kZSBvZiB0aGUgbWVudGlvbmVkIHZlbmRvcnMuIFRo
ZXkgcGFydGlhbGx5IHVzZSAxOCB5ZWFycyBvbGQga2VybmVsIGNvZGUgYW5kCj4+PiBUZWxuZXQt
bGlrZSBtYW5hZ2VtZW50IGludGVyZmFjZXMuCj4+PiAKPj4+IFJlZ2FyZHMsCj4+PiAKPj4+IFZp
bmNlbnQKPj4+IAo+Pj4gCj4+PiBPbiAyMC4wOC4xOSAxMzoyMSwgUmljaCBCcm93biB3cm90ZToK
Pj4+PiBIaSBmb2xrcywKPj4+PiAKPj4+PiBZb3UndmUgcHJvYmFibHkgc2VlbiB0aGUgU2xhc2hk
b3QgYXJ0aWNsZSBhYm91dCAobGFjayBvZikgc2VjdXJpdHkgZ2FpbnMgaW4gcm91dGVyIGZpcm13
YXJlLiBodHRwczovL3lyby5zbGFzaGRvdC5vcmcvc3RvcnkvMTkvMDgvMTYvMjA1MDIxOS9odWdl
LXN1cnZleS1vZi1maXJtd2FyZS1maW5kcy1uby1zZWN1cml0eS1nYWlucy1pbi0xNS15ZWFycyBU
aGUgb3JpZ2luYWwgYXJ0aWNsZSBvbiBTZWN1cml0eSBMZWRnZXIgaXMgYXQ6IGh0dHBzOi8vc2Vj
dXJpdHlsZWRnZXIuY29tLzIwMTkvMDgvaHVnZS1zdXJ2ZXktb2YtZmlybXdhcmUtZmluZHMtbm8t
c2VjdXJpdHktZ2FpbnMtaW4tMTUteWVhcnMvCj4+Pj4gCj4+Pj4gVHdvIHF1ZXN0aW9uczoKPj4+
PiAKPj4+PiAxKSBEb2VzIGFueW9uZSBrbm93IGlmIHRoZSByZXNlYXJjaGVycyBsb29rZWQgYXQg
T3BlbldydD8KPj4+PiAKPj4+PiAyKSBJZiBub3QsIGhvdyB3b3VsZCBPcGVuV3J0IHN0YWJsZSBv
ciBzbmFwc2hvdCBoYXZlIGZhcmVkIGluIHRoZSBhbmFseXNpcz8gRG8gd2UgZW5hYmxlIHN0YWNr
IGd1YXJkcywgQVNMUiwgZXRjLiBvbiBhbGwgYnVpbGRzPwo+Pj4+IAo+Pj4+IFRoYW5rcy4KPj4+
PiAKPj4+PiBSaWNoCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+Pj4+IG9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKPj4+PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+Pj4+IAo+PiAKPj4gCj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
