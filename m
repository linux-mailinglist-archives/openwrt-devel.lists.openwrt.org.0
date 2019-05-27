Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7446A2B5FF
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 15:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3F8xoVkF3eZ7QLtOvTPGKLYu8fD7pgdbzjwEI6EBQLw=; b=gJea3Esx7FXKqK
	KDD/xZN7EJFWVTlnHsmTK2TsQzJCtm+zuuxaW6sowKEvPVuSnjtFsXE4vnEGaB/WTfBWcI0PZjHXI
	gaSL2SlUmsVEuRRq7QGAl+mUBBA6wszLoHl6ahN7n1Fw+UnZuAWxMhV208gEWEDMP9InFOb7+9BjF
	/9wCSurYJCbSq+gA1bovGLe3CnQnmJa0HhsDgwu+L6E8d8+jsipisOZRo6YxC23RG6wIxp2b/+3FP
	tIQcnGEeTwVaDPzHm1urqeN8SGW3Gc4UmiCD0Nbk1nfSxLOeLvyTzg5/33coKJBNV0XwSknb68Iin
	YBCILtPlnMZ7WtawG+Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFLp-0004al-Ul; Mon, 27 May 2019 13:07:41 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFLi-0004a5-HX
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 13:07:36 +0000
Received: by mail-ot1-x344.google.com with SMTP id 66so14775159otq.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 06:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WAW2Dc8X6l1MySP7SZ2O87yB5mfSE8eVetiFR1gmgAE=;
 b=eLRH89zSSTFG5YNnDe4LpImXcz1irJZ2u9ob3rW9A84Tq0qB1E9xVb9fajQ8BJI77t
 RsCs7gYyQ1jhx+UBnJsZyzN8zEG2Gp7jEuRre6pka8jRLioERtvJgT6LYLewC2usolJU
 NyzzOm0MVoXCMtGZ0tppyYqunJL/tFmB0QOy+XBA0Rt1XMWeiya5bw4baoq+X2QTUGKE
 QIhYSRvxZ2VkCzJKBY0JDN7pvb7P8APEIx3Qjyb/drPxyquzS4y4iRHRyefIOf0LQAsg
 2k27h9gwTlUkalxYNLiWoKNR0TOTAedX6mKMP7lsoOu68DfoKz/cJEWB8w1A4PMUzx6X
 7hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WAW2Dc8X6l1MySP7SZ2O87yB5mfSE8eVetiFR1gmgAE=;
 b=ad2sozR1MBt1DS636JYemm0HBRIgo3u1sV8sMWGVzoJpuwwgulpXpL5nTOUpNTUU0a
 2VEoRvz68QR08sL90wXR4c3NUytgi03O8Dvvbci2Q3kg2lOXVUJov01/fj4Sh1p0Ys8n
 tiARRL6hxi6REgVKEzDjzMebqGDiT73SLbCl+EiVsYvfkt3IHh8dCugIZvgIxIvKytEf
 xoPPMxhXpY1RftecMg3Czq0ddT7Gze/iCx0mQOtdsjItpcXZTVE0rsbWcfQVywHie4j9
 myJre4ybSl3kZXjzH1FoPd/oASTednjjODh04dBdU5cbiGUe00PPzY8TVUj3UtF7VQ/2
 SOqQ==
X-Gm-Message-State: APjAAAXcFIAzXtfAE54/pHcOpqp5jmzUH9cDo8lCrd/86DBQBqdI7dZy
 PTyEfJBkR/sf74MQALxgRTWATwhGkgQfKGsK3KE=
X-Google-Smtp-Source: APXvYqzVoBueXYKQlk2gkDhSR/1uJFuob4TrWDKq1Klc7DgsLtvZ0ObbfvLeh3XVrKfNA8JDzRpXIH47eo8B2wyd49c=
X-Received: by 2002:a9d:5a86:: with SMTP id w6mr43281655oth.82.1558962451183; 
 Mon, 27 May 2019 06:07:31 -0700 (PDT)
MIME-Version: 1.0
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <CAOdf3goqqUUXc7pM8wMR=edshXdJAfqEzUi5_wGSnSyJk-P7sg@mail.gmail.com>
 <20190521145502.GB4606@meh.true.cz>
 <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
 <20190527130023.GI50588@meh.true.cz>
In-Reply-To: <20190527130023.GI50588@meh.true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Mon, 27 May 2019 10:07:19 -0300
Message-ID: <CAOdf3gpr8rgzPq4KgX_e5obz1YxWJO1dvTuc5DCuXqXu=7XrSQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_060734_820070_D1FA2CAB 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCkxlIGx1bi4gMjcgbWFpIDIwMTkgw6AgMTA6MDAsIFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+IGEgw6ljcml0IDoKPgo+IEV0aWVubmUgQ2hhbXBldGllciA8Y2hhbXBldGll
ci5ldGllbm5lQGdtYWlsLmNvbT4gWzIwMTktMDUtMjUgMTI6NDM6MjVdOgo+Cj4gPiBKdXN0IHRv
IGJlIGNsZWFyIGknbSAxMDAlIGluIGZhdm9yIG9mIHlvdXIgZWZmb3J0IHRvIGhhdmUgcmFuZG9t
IHBvb2wgaW5pdAo+ID4gZG9uZSBmYXN0IG9uIGFsbCBkZXZpY2VzLCBhbmQgeW91ciBzb2x1dGlv
biwgYmFzZWQgb24gU3RlcGhhbiBhd3NvbWUgd29yaywKPiA+IHNlZW1zIHJlYWxseSBnb29kIEkg
anVzdCB3YW50IHRvIGJlIHN1cmUgd2UgZG9uJ3QgbWFrZSBzb21lIGRldmljZXMgd29yc2UgLwo+
ID4gYXJlIG5vdCBtaXNzaW5nIHNvbWV0aGluZwo+Cj4gRllJLCBJJ3ZlIGp1c3QgYWRkZWQgbW9y
ZSBkZXZpY2VzIHRvIHRoZSB0ZXN0aW5nIGJlZm9yZSBzdWJtaXR0aW5nIHRoZSBuZXh0Cj4gcm91
bmQgb2YgcGF0Y2hlcywgYW5kIGdvdCBmb2xsb3dpbmcgb24gdGhlIE1UNzYyMEEgYmFzZWQgZGV2
aWNlOgo+Cj4gIHJvb3RAT3BlbldydDovIyBjYXQgL3Byb2MvY3B1aW5mbwo+ICBzeXN0ZW0gdHlw
ZSAgICAgICAgICAgICA6IE1lZGlhVGVrIE1UNzYyMEEgdmVyOjIgZWNvOjYKPiAgbWFjaGluZSAg
ICAgICAgICAgICAgICAgOiBCRENPTSBXQVAyMTAwLVNLCj4gIHByb2Nlc3NvciAgICAgICAgICAg
ICAgIDogMAo+ICBjcHUgbW9kZWwgICAgICAgICAgICAgICA6IE1JUFMgMjRLRWMgVjUuMAo+Cj4g
IHJvb3RAT3BlbldydDovIyBjYXQgL3N5cy9kZXZpY2VzL3N5c3RlbS9jbG9ja3NvdXJjZS9jbG9j
a3NvdXJjZTAvYXZhaWxhYmxlX2Nsb2Nrc291cmNlCj4gIHN5c3RpY2sgTUlQUwo+Cj4gIHJvb3RA
T3BlbldydDovIyAvc2Jpbi91cm5nZAo+ICBqZW50LXJuZyBpbml0IGZhaWxlZCwgZXJyOiAyCj4K
PiBXaGVyZSB0aGF0IGVycm9yIDIgaXMgRUNPQVJTRVRJTUUuIEl0IG1ha2VzIG1lIHdvbmRlciBp
ZiB0aGVyZSdzIHNvbWV0aGluZwo+IHdoaWNoIGNvdWxkIGJlIHR3ZWFrZWQgb24ga2VybmVsIHNp
ZGUgaW4gb3JkZXIgdG8gcHJvdmlkZSBiZXR0ZXIgZW52aXJvbm1lbnQKPiBmb3IgamVudC1ybmcg
b24gdGhpcyBxdWl0ZSBzdGlsbCBwb3B1bGFyIFNvQy4KClRoZSBmYWN0IHRoYXQgbWlzc2luZyBo
aWdoIHByZWNpc2lvbiB0aW1lciBpcyBwcm9wZXJseSBkZXRlY3RlZCBpcyBhIGdvb2QgbmV3cywK
YnV0IG5vdyB0aGF0IG1lYW5zIHlvdSByZWFsbHkgbmVlZCB0byBwcm92aWRlIGEgZmFsbGJhY2ss
IGVsc2UKcmVtb3ZpbmcgdXJhbmRvbS1zZWVkIGlzIGEgcmVncmVzc2lvbgoKPgo+IC0tIHluZXp6
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
