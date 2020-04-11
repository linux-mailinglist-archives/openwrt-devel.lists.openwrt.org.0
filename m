Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D734E1A4E4B
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 08:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=InQ8U8s0jP93+JtoVtB/NNGkXokUYA2pmTMgNrMEMBg=; b=VhgBMTbt4dnGslf5QeGPcUbh4
	8TwPTWprOP4qECmDNoXO3+bA5FWFAv3QLO9Ig2znleQG/HX8S4lUjZbFThwnblDWzvsndkQyD6+2k
	5IgwIIuYz6yc3FGfl68TFF7otqu/QBRblCGbZs6FMHej9doHBHJB4w9wy27R2rooSd+TgysIvH7va
	so2EJpFqkRifHqwDMYjvpHXQl5opSt/jzUYUeQiSeb7Mqr1OenLEgJEvT/dGg7kBX3qm6rdGLE66G
	r1RJ8qplfC6lidcExccJS3mtLhs5Lewg6jFFDEYOYI3UWmbXyOAd3IcBpynBxYtD2K0rHrLEyHx94
	w4A6BUWyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN9By-0006zh-9j; Sat, 11 Apr 2020 06:00:34 +0000
Received: from meesny.iki.fi ([2001:67c:2b0:1c1::201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN9Bp-0006yS-UJ
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 06:00:29 +0000
Received: from [IPv6:2001:14ba:8091:2700:5820:efa0:f6a0:5203]
 (dtckwryc4fd36b91ymkbt-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:5820:efa0:f6a0:5203])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id 28EAA202C7;
 Sat, 11 Apr 2020 09:00:11 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1586584811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nUlhkUauyODkIeKBmuHrygdG/Gjtf5T6Ub2eADYCpQ0=;
 b=TsxuEWam9my/1Rr83RRhfx2nzV81VMhu7ZCZbNhBLJXIA8VocZjta5aFBdXHQ0YLCTJzo1
 9ED+Ai8xpSN/0zZLrExO9lqz96XNLlqHmoQ9rsFANAWwbUSNACnzFyASlduRqwv/rGGtvX
 O26K9iTbLyf6x39JdfCDTAVqY11m+Z0=
To: openwrt-devel@lists.openwrt.org
References: <20200410003917.22033-1-cotequeiroz@gmail.com>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <8fc07309-5869-aa9a-5ee2-19e647cbb74f@iki.fi>
Date: Sat, 11 Apr 2020 09:00:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200410003917.22033-1-cotequeiroz@gmail.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1586584811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nUlhkUauyODkIeKBmuHrygdG/Gjtf5T6Ub2eADYCpQ0=;
 b=JDqBanM4T5Xs7FRHum4WxvuKNV5Gl42m6SuMp2BHwaDEpdBzCLXq2EdODzloA8cU8btKM2
 vztaDxUGZU0mvaraf3Rogz9ZaoPg2ag/W99GmTX4ffnw17GZZhhYv7e9MIzlc364TK8aw0
 SsqujyhDAQiLdeiTPGNmSOAmhT+5tk8=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1586584811; a=rsa-sha256; cv=none;
 b=bJqYnrZv9Sq7eXSt7BeWJIagi9WC/lSwRhy7yGsNbWgFKBCx09KD2JmzWyNqqxx96z4Zjx
 BOVAu6y9zdogslDfu4XS/f8hnvGDIjT7DzjrLNLfvonsWMWQxMAUoOGeld+S53lEi8EfVK
 mfhFeWgWtxq/f2K9R7BXey4jT5Nhvco=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_230027_114378_71EC7479 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] build: config: allow bool to select a
 module pkg
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RW5lYXMgVSBkZSBRdWVpcm96IHdyb3RlIGF0IFRodSBBcHIgOSAxNzozOToxNyBQRFQgMjAyMDoK
ID4gVGhpcyB3YXMgcmVwb3J0ZWQgdG8gbWUgaGVyZToKID4gCmh0dHBzOi8vZ2l0aHViLmNvbS9v
cGVud3J0L29wZW53cnQvY29tbWl0L2RjZjNlNjNhMzVkMDVlN2U1MTAzODE5YzBmMTcxOTViZmFm
ZTliYWEjY29tbWl0Y29tbWVudC0zODM5MDQ1MAogPiBUaGUgdXBkYXRlIHRvIGtjb25maWctdjUu
NiBicm9rZSBUQVJHRVRfTVVMVElfUFJPRklMRSBiZWNhdXNlIGl0IHdvdWxkIG5vdCAKYWNjZXB0
IGJvb2wgVEFSR0VUX0RFVklDRV88ZGV2PiB0byBzZWxlY3QgTU9EVUxFX0RFRkFVTFRfPHBrZz4g
YmVjYXVzZSAKTU9EVUxFX0RFRkFVTFRfPHBnaz4gJ2RlcGVuZHMgb24gbSctLXNob3VsZCBvbmx5
IGhhdmUgYSAnbicgb3IgJ20nIHZhbHVlLsKgIEEgCid5JyB2YWx1ZSB3b3VsZCBpbXBseSBhbiB1
bm1ldCBkaXJlY3QgZGVwZW5kZW5jeSAoZGVwZW5kcyBvbiBtKS4KID4KID4gTXkgZmlyc3QgdGhv
dWdodCB3YXMgT0ssIGlmIGl0IHdhbnRzIHRvIGJlIGEgJ3knLCBnZXQgcmlkIG9mIHRoZSAnZGVw
ZW5kcyAKb24gbScgbGluZTsgdGhhdCBkaWQgbm90IHdvcmssIGJlY2F1c2UgTU9EVUxFX0RFRkFV
TFRfPHBrZz4gc2VsZWN0cyAKUEFDS0FHRV9wa2csIHRoZW4gPHBrZz4gd291bGQgYmUgZm9yY2Vk
IHRvIGJlIGJ1aWx0LWluLgogPiBTbywgdW5sZXNzIHNvbWVvbmUgaGFzIGEgYmV0dGVyIGlkZWEs
IGxldCdzIHJldmVydCB0byB0aGUgb2xkIGJlaGF2aW9yLCAKYW5kIHRvbGVyYXRlIHNvbWUgJ3Vu
bWV0IGRlcGVuZGVuY2llcycgb25jZSBhZ2Fpbi4KCkhvcGVmdWxseSB0aGlzIGdldHMgZml4ZWQg
c29vbiwgYXMgSSBoYXZlIGEgaHVuY2ggdGhhdCB0aGlzIGJyb2tlIHByZXR0eSBtdWNoIAphbGwg
VEFSR0VUX01VTFRJX1BST0ZJTEUgYnVpbGRzIHRoYXQgaGF2ZSB2YXJ5aW5nIGtleSBjb21wb25l
bnRzIChsaWtlIHdpZmkgCmZpcm13YXJlKS4gUG9zc2libHkgYWxzbyBidWlsZGJvdCBzbmFwc2hv
dHMsIGFzIGUuZy4gaW4gaXBxODA2eCB0aGUgaW5jbHVkZWQgCndpZmkgZmlybXdhcmUgZmlsZSB2
YXJpZXMgYnkgZGV2aWNlLgoKSSBub3RpY2VkIGEgcHJvYmxlbSB3aXRoIG15IG93biBtdWx0aS1k
ZXZpY2UgYnVpbGRzLCBhbmQgdGhlcmUgaXMgbm93IGZvcnVtIApkaWNzdXNzaW9uIGFib3V0IGFu
IGlzc3VlLCB3aGljaCBJIHRoaW5rIGlzIHJlbGF0ZWQgdG8gdGhpczoKaHR0cHM6Ly9mb3J1bS5v
cGVud3J0Lm9yZy90L3dpcmVsZXNzLWZhaWxzLW9uLXNuYXBzaG90LXIxMjkwMC1rZXJuZWwtNS00
LW9uLWMyNjAwLWlwcTgwNngvNjAxNTUvMQoKQXBwbHlpbmcgdGhlIHBhdGNoIHByb3BzZWQgaGVy
ZSBoZWxwZWQgdG8gZml4IG15IGF0aDc5IG11bHRpLWRldmljZSBidWlsZC4KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
