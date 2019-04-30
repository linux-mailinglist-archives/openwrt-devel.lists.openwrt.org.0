Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC38EE14
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 02:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:Cc:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EyoM38l1XgYZf06LypqmMrpX1o4+Hf2C+/+wiMdj4LI=; b=PQpXJCaTqYYh3hh22cqSG0T0v
	KqQ+UmuluUeH693i4S69t2aYNcaegsulcKsywBEIYHQScSlk3DAyWbaB7QhKJZOPJQS1Nqjs2hHNZ
	HcBSxmW2tSniRU3SJategMVnjBpCdM9fIlXOqTydt5EKfNR/ehz2kMzY2AVa2JYstqzc6RHvp3jJj
	yirR9gjxx1BQmabtAAyWRCO1FiTT2d+hng914G+4E6GhfG6HTHCsRDqs0PLtkwPjEAsAAXaaYp3Zs
	h8VnWfXFEeOpKqBwO7fqkTpvAcpN8jDFrtXXm1wH/jFfddjKa44Ijk+nzBriRTi6nxkrGAOkXGHaT
	nShtp+b+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLH2Q-0000X7-RM; Tue, 30 Apr 2019 00:54:26 +0000
Received: from mail-it1-x134.google.com ([2607:f8b0:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLH2L-0000WN-89
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 00:54:22 +0000
Received: by mail-it1-x134.google.com with SMTP id z4so2057788itc.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Apr 2019 17:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=8Itmwe4IOvI1GVlRDsrR2Anx3u50GnrxlKXx62BB1NY=;
 b=M8zg9Nrz8GqDvjyJlzGlyJ2tNOy1cnWwqd4260XXTs4f8vm7ETtZdfq6AQKfqPC8VP
 BqcFJnAcRgQRefV9D4AHVm3opkIYX2M+Z/lh6XQplQCzo40NTMrq4/1Pdr/3B3mkSZli
 bdanY2XLTxVEh7gqj3yorVvOdB3CRWtmp2omI6fbq0nQ0MPHhcir7fkD97el/+k6AcD4
 pvWtkuoZs6RUr/sj63BN+snyfEpCIAPVPQn6XhjQliG/AskvN46ex0XI8mYiFvZ5BI58
 kYyP5vd/q2TubPnagIoUQNEUFKuhj5a7yDrKnN4Xd30tOuB5DyUueZpapBKB/31O7ZtR
 Eajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8Itmwe4IOvI1GVlRDsrR2Anx3u50GnrxlKXx62BB1NY=;
 b=FFWrJnH1/fTvKu/tPleTSzN4oJuv07NEIoGQ5UJaajP2n/WgO90fCgljmWzemDQbYV
 G67fyOJ9cuGBRkp01FKehA2OQK/ucpYH2/iswGuT+GHFE5nfcNpRbJ1iqDsH+OsOU6Yz
 MQh/DgvR/hzjpRQeSxHh9mqokh3XeH5GhvSlyLnof8F5eg8ujigTjC05T92C8+DZiPdX
 UbT6/uceA2Hsv2O3qULAjEaWHPMDr7v1A3fy30dsGnJ7lZ5ZuQiTgfVMzyN+yG5EVjXP
 S7FO14sd1zh3N9X1koK5odT6+wo+LycQQ4C0feN6yIZV6jgDUO9HvQjOgmEGK/lVLTRG
 QeIQ==
X-Gm-Message-State: APjAAAVSoxxXiCXCgw9OJeiPr3fjaHOopB5oiwdoEmeRmgt0oRjNjTNJ
 WEcYr3wiXQadUBRPN41pUJkZfZo=
X-Google-Smtp-Source: APXvYqyxdItJaQoIr2O7nYZgPemxh9bt2C1BdHYmT90P89oVgcJWu+IDY+nEY4V6iH0H1kmQD+rbDw==
X-Received: by 2002:a24:62c4:: with SMTP id d187mr1690676itc.175.1556585659302; 
 Mon, 29 Apr 2019 17:54:19 -0700 (PDT)
Received: from [172.16.0.159] (d149-67-24-34.nap.wideopenwest.com.
 [67.149.34.24])
 by smtp.gmail.com with ESMTPSA id z7sm10609377iog.75.2019.04.29.17.54.17
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 17:54:18 -0700 (PDT)
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <f0cd6229-71b1-fecc-3876-97a68ef743a6@ironai.com>
 <cd20ab81-8400-0e34-dc7c-ff885aa5d1ef@neratec.com>
 <2a85ab45-d350-c2d0-175c-1e23f79ceb8c@ironai.com>
 <4a925786-ded4-5baa-92cd-3888f914f8ea@universe-factory.net>
From: Eric Luehrsen <ericluehrsen@gmail.com>
Message-ID: <ef6e7e55-fc85-e17f-72c3-7a622b15e276@gmail.com>
Date: Mon, 29 Apr 2019 20:54:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4a925786-ded4-5baa-92cd-3888f914f8ea@universe-factory.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_175421_311128_EF294948 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:134 listed in]
 [list.dnswl.org] 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ericluehrsen[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] Fix TX power handling
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gNC8yOS8xOSA4OjI0IFBNLCBNYXR0aGlhcyBTY2hpZmZlciB3cm90ZToKPiBUaGlzIGlzIGp1
c3QgdGhlIGZhY3RvciBvZiAxLzIvMy80IChhcHByb3hpbWF0ZWQpIGluIGRCOgo+IAo+IDEwXjAu
MCA9IDEKPiAxMF4wLjMg4omIIDIKPiAxMF4wLjUg4omIIDMKPiAxMF4wLjYg4omIIDQKPiAKPiBJ
J3ZlIHNlZW4gdGhlc2UgbnVtYmVycyBiZWluZyB1c2VkIGluIFdMQU4gZHJpdmVycyB0byBhY2Nv
dW50IGZvciB0aGUKPiBhbnRlbm5hIGFycmF5IGdhaW4sIHNvIGF0IGxlYXN0IHRoaXMgcGFydCBv
ZiB0aGUgVFggcG93ZXIgY29tcHV0YXRpb24gbWlnaHQKPiBhbHJlYWR5IGJlIHdvcmtpbmcgYXMg
ZXhwZWN0ZWQuCj4gCj4gS2luZCBSZWdhcmRzLAo+IE1hdHRoaWFzCj4gCj4gCj4gT24gNC8zMC8x
OSAxMjozOSBBTSwgVmluY2VudCBXaWVtYW5uIHdyb3RlOgo+PiBIaSBNYXR0aGlhcywKPj4KPj4g
dGhhbmsgeW91IGZvciB0aGUgaGludC4gVGhhdCdzIGZ1bm55LCBiZWNhdXNlIHNvbWVvbmUgZnJv
bSB0aGUgR2VybWFuIEZlZGVyYWwgTmV0d29yayBBZ2VuY3kKPj4gc2FpZCB0aGF0IHdoZW4gcmFk
aW9zIGhhdmUgbXVsdGlwbGUgYW50ZW5uYXMsIHRoZSBhZ2dyZWdhdGVkIEVJUlAgb2YgdGhlIGFu
dGVubmEgYXJyYXkgbXVzdCBub3QgZXhjZWVkIHRoZQo+PiBFSVJQIGxpbWl0cyBvZiBhIHNpbmds
ZSBhbnRlbm5hLCBidXQgSSd2ZSBhc3N1bWVkIHRoaXMgaXMgZG9uZSBpbiBoYXJkd2FyZSBhbmQg
bm90IGluIHNvZnR3YXJlLgo+Pgo+PiBDYW4geW91IGhpbnQgbWUgdG8gdGhlIHNvdXJjZSBmb3Ig
dGhpcyBsb29rdXAgdGFibGU/Cj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IFZpbmNlbnQgV2llbWFubgo+
Pgo+Pgo+PiBPbiAyOS4wNC4yMDE5IDA4OjUwLCBNYXR0aGlhcyBNYXkgd3JvdGU6Cj4+PiBPbiAy
NS8wNC8yMDE5IDE3OjU0LCBWaW5jZW50IFdpZW1hbm4gd3JvdGU6Cj4+Pj4gRmlyc3QgRUlSUCBp
cyBieSBkZWZpbml0aW9uIEVSUCArIGFudGVubmEgZ2FpbiAtIGNhYmxlIGxvc3MuCj4+Pgo+Pj4g
SGkKPj4+IFNtYWxsIGRldGFpbDogRG9uJ3QgZm9yZ2V0IHRoZSBhbnRlbm5hIGFycmF5IGdhaW4u
Cj4+Pgo+Pj4gU28gRUlSUCBhczoKPj4+IEFudGVubmEgUG9ydCBQb3dlcgo+Pj4gKyBBbnRlbm5h
IEdhaW4KPj4+ICsgQW50ZW5uYSBBcnJheSBHYWluCj4+PiAtIENhYmxlIExvc3MKPj4+Cj4+PiBU
aGUgQXJyYXkgR2FpbiBhcyBhIHNpbXBsZSBsb29rdXAgdGFibGU6Cj4+PiAxIEFudGVubmE6IDAK
Pj4+IDIgQW50ZW5uYXM6IDMKPj4+IDMgQW50ZW5uYXM6IDUKPj4+IDQgQW50ZW5uYXM6IDYKPj4+
Cj4+PiBCUgo+Pj4gTWF0dGhpYXMKCkEgY29uY2VybiBjb3VsZCBiZSBhIHNpbXBsZSBjb3VudCBv
ZiBhbnRlbm5hcyBtYXkgb3ZlciBlc3RpbWF0ZSBFSVJQIGFuZCAKcmVkdWNlIGVuYWJsZWQgcG93
ZXIgYmVsb3cgd2hhdCBpcyBhbGxvd2VkLiBBIGNoZWFwIGV4YW1wbGUgb2Ygc2ltcGxlIApkaXZl
cnNpdHksIG9ubHkgb25lIGFudGVubmEgaXMgdXNlZCBmb3IgVFggYmFzZWQgb24gd2hpY2ggb2Yg
dGhlIG90aGVyIAphbnRlbm5hcyBSWCB0aGUgYmVzdCBjb25uZWN0aW9uIHRvIGEgY2xpZW50IChn
YWluPTApLiBFdmVuIHdpdGggYmVhbSAKZm9ybWluZywgYSBmZXcgYW50ZW5uYXMgbWF5IGJlIGlu
Y2x1ZGVkIGluIFRYIHBoYXNlZCBhcnJheSBhbmQgb3RoZXJzIFJYIAptb25pdG9ycy4KLSBFcmlj
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
