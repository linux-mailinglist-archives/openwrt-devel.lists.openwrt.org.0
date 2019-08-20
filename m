Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA48A96487
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 17:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pyioHrdIY44SxNqtr1wuz7lwh/mCX71P2+A6jTVQyM=; b=obdfwEFf7XYNcY
	1nkypQbjgIUN6xN2x+BcVbX/2+30ypGQ7QvrpOscRVPAYmMGzDM48lQLmAdoxrz6OWxB0eOsycrbl
	0pPfdus3zeMm4LM4oo2p8l+RYYITeOdT++opC1+Axmboxp+VTKRCQ05MmHUGybTGo4yXpsFyj9WBb
	Nu1AJAeY0N9DQhVWDNcTrLjJD/puBEuc6kWluPwgjIJ9aLrQmTyDF51b98y11BEF0x4Z6WqLZ8GKE
	JKwN6KrMHxL3mqVSFDBNBBkRrzZfvkfhSeOvKejZI1xcqTuQVRscf0oyBA99UvyoYLfzSoClPuvhs
	FYj+TOkRyB8kvanMLJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i069b-0000i4-E1; Tue, 20 Aug 2019 15:34:35 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i069S-0000hR-N3
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 15:34:28 +0000
Received: by mail-qk1-x729.google.com with SMTP id m10so4850328qkk.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 08:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=6IySFekpeP0D5JPBwFp8Uv32ZAdMcI6VEAkGvJX5Tsk=;
 b=bn/72dCYwhsnBOuPqeZL5/Fra3Xxf4yzzLe9vO772gSKTfQvszN1iqPHlz40u4CSCk
 vyTvHZkw18z0FP8JlKlEExhksFGhwxIjDKuykfMDNHnafvKsYS12F0Cmo5dthpefun+I
 Ccwf2YI9HSSKqF5IZk2T4SUZWivEvr8zodD03/2SuChXdzc8s7PJi5Hj0JYfzZIvX5dG
 L487DamYipez/a3TfvpYHLyWgRnDdyFXlWAFbhMr4woISpt6eex2Zg5QJHYFCHMKiQ1p
 vRJtqdv72icjxMYuYI8WLP8x7DP317tEM3Mfa8TzLPCENW3+xsIhVVHygvgyzKIKIgi4
 1eZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=6IySFekpeP0D5JPBwFp8Uv32ZAdMcI6VEAkGvJX5Tsk=;
 b=FiETTMsic/qYDXBBw9ePet2GxSOknBSswxx1xnWPEWZABtGwq3ezuTeUO8Elv3F0kg
 5I5Nj9B7m1CUMpcgY8u0qHFhqfCsRZKLXWqa8JNtrtqUCjBWDsYxL9u/dBd3/fuxJ9Dk
 b7BXAMDv7eOkNIsZFYlf5PGD1xxWNPn85DKv+GVlD34ug4WMlna149SUsZlsuV7ruNST
 n0cMJ5vW29aPD4dz0SrjpN2rH6WG8Aj04v1CQ75Dqj/kwOPrAdBUPDNQVYDZFqUf1h3M
 WzhTuz8vdrfZaTp2axScjFH4v2maTN7r32Kt2Xk/ktOWIzpBSov+ORWoKZZMR6jU5A1Z
 tkJg==
X-Gm-Message-State: APjAAAWhF/YJBLX26oWLLjG7WF8M6ygojMRZZ2H9eS/CeKp8Jiv/9KXD
 Vb4tx0fzFISX4nuIDcZAr9QBZkna
X-Google-Smtp-Source: APXvYqyNbGG5AG+kZ9sWufls+bmtU84iQ91OsPAWpjaBsKrKroOi/vXVpmz/rXd7gOzHhFHLKREPBg==
X-Received: by 2002:a37:a744:: with SMTP id q65mr19246749qke.151.1566315265249; 
 Tue, 20 Aug 2019 08:34:25 -0700 (PDT)
Received: from richs-mbp-10337.lan ([70.16.98.90])
 by smtp.gmail.com with ESMTPSA id m3sm4747788qki.10.2019.08.20.08.34.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 08:34:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Rich Brown <richb.hanover@gmail.com>
In-Reply-To: <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
Date: Tue, 20 Aug 2019 11:34:23 -0400
Message-Id: <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
To: Vincent Wiemann <vincent.wiemann@ironai.com>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_083426_750232_3AFCCC06 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:729 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgVmluY2VudCwKCkkgZG9uJ3Qga25vdyB3aGV0aGVyIHRoZSBhcnRpY2xlLCBvciBpdHMgdW5k
ZXJseWluZyByZXBvcnQgZnJvbSBDeWJlciBJbmRlcGVuZGVudCBUZXN0aW5nIExhYiAtIENJVEws
IGlzIGEgam9rZSBvciBub3QuIChBbHRob3VnaCwgSSdsbCBhZ3JlZSB0aGF0IGFueSBmaXJtd2Fy
ZSB1c2luZyAxOC15ZWFyIG9sZCBrZXJuZWxzIGlzIG9uIGl0cyBmYWNlIGEgc2VjdXJpdHkgam9r
ZS4pCgpNeSBxdWVzdGlvbnMgd2VyZSBtb3JlIGFib3V0IE9wZW5XcnQuIEhvdyB3b3VsZCBvdXIg
Y3VycmVudCBidWlsZHMgc3RhY2sgdXAgdW5kZXIgdGhlIGNyaXRlcmlhIHVzZWQgaW4gdGhlIHJl
cG9ydCdzIHRhYmxlPyBJdCBsaXN0ZWQ6CgotIFN0YWNrIEd1YXJkcwotIEFTTFIKLSBSRUxSTwot
IEZvcnRpZnkgU1JDCi0gTm9uLUV4ZWMgU3RhY2sKCkFuZCBhcmUgdGhlcmUgb3RoZXIgc2VjdXJp
dHkgcHJhY3RpY2VzIHRoYXQgd2UgZW5mb3JjZSB0aGF0IHdvdWxkIG1ha2UgYW4gT3BlbldydCBz
eXN0ZW0gbW9yZSBzZWN1cmU/CgpJZiBPcGVuV3J0IGNvbXBhcmVzIGZhdm9yYWJseSwgaXQgb2Nj
dXJzIHRvIG1lIHRoYXQgd2UgY291bGQgaW52aXRlIENJVEwgdG8gcmV2aWV3IE9wZW5XcnQgYnVp
bGRzIChvbiBodW5kcmVkcyBvZiByb3V0ZXJzKSBhbmQgdXBkYXRlIHRoZWlyIHJlcG9ydC4uLgoK
VGhhbmtzLgoKUmljaAoKPiBPbiBBdWcgMjAsIDIwMTksIGF0IDk6NDMgQU0sIFZpbmNlbnQgV2ll
bWFubiA8dmluY2VudC53aWVtYW5uQGlyb25haS5jb20+IHdyb3RlOgo+IAo+IEhpIFJpY2gsCj4g
Cj4gdGhlIGFydGljbGUgaXMgYSBqb2tlLiBJJ20gbm90IHRhbGtpbmcgYWJvdXQgdGhlIHJlc2Vh
cmNoZXJzLCBidXQgYWJvdXQgY2l0aW5nIGEgc3RhdGVtZW50IGxpa2U6Cj4g4oCeSG93ZXZlciwg
dGhvc2Ugc2FtZSBmaXJtd2FyZSBiaW5hcmllcyBkaWQgbm90IGVtcGxveSBvdGhlciBjb21tb24g
c2VjdXJpdHkKPiBmZWF0dXJlcyBsaWtlIEFTTFIgb3Igc3RhY2sgZ3VhcmRzLCBvciBkaWQgc28g
b25seSByYXJlbHks4oCcCj4gCj4gTG9vayBhdCB0aGUgc291cmNlLWNvZGUgb2YgdGhlIG1lbnRp
b25lZCB2ZW5kb3JzLiBUaGV5IHBhcnRpYWxseSB1c2UgMTggeWVhcnMgb2xkIGtlcm5lbCBjb2Rl
IGFuZAo+IFRlbG5ldC1saWtlIG1hbmFnZW1lbnQgaW50ZXJmYWNlcy4KPiAKPiBSZWdhcmRzLAo+
IAo+IFZpbmNlbnQKPiAKPiAKPiBPbiAyMC4wOC4xOSAxMzoyMSwgUmljaCBCcm93biB3cm90ZToK
Pj4gSGkgZm9sa3MsCj4+IAo+PiBZb3UndmUgcHJvYmFibHkgc2VlbiB0aGUgU2xhc2hkb3QgYXJ0
aWNsZSBhYm91dCAobGFjayBvZikgc2VjdXJpdHkgZ2FpbnMgaW4gcm91dGVyIGZpcm13YXJlLiBo
dHRwczovL3lyby5zbGFzaGRvdC5vcmcvc3RvcnkvMTkvMDgvMTYvMjA1MDIxOS9odWdlLXN1cnZl
eS1vZi1maXJtd2FyZS1maW5kcy1uby1zZWN1cml0eS1nYWlucy1pbi0xNS15ZWFycyBUaGUgb3Jp
Z2luYWwgYXJ0aWNsZSBvbiBTZWN1cml0eSBMZWRnZXIgaXMgYXQ6IGh0dHBzOi8vc2VjdXJpdHls
ZWRnZXIuY29tLzIwMTkvMDgvaHVnZS1zdXJ2ZXktb2YtZmlybXdhcmUtZmluZHMtbm8tc2VjdXJp
dHktZ2FpbnMtaW4tMTUteWVhcnMvCj4+IAo+PiBUd28gcXVlc3Rpb25zOgo+PiAKPj4gMSkgRG9l
cyBhbnlvbmUga25vdyBpZiB0aGUgcmVzZWFyY2hlcnMgbG9va2VkIGF0IE9wZW5XcnQ/Cj4+IAo+
PiAyKSBJZiBub3QsIGhvdyB3b3VsZCBPcGVuV3J0IHN0YWJsZSBvciBzbmFwc2hvdCBoYXZlIGZh
cmVkIGluIHRoZSBhbmFseXNpcz8gRG8gd2UgZW5hYmxlIHN0YWNrIGd1YXJkcywgQVNMUiwgZXRj
LiBvbiBhbGwgYnVpbGRzPwo+PiAKPj4gVGhhbmtzLgo+PiAKPj4gUmljaAo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IGh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
