Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1DD11CC
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 16:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+3C5HUXmfzaEydhvG9ueKFpYv0NfU1z7H9EFU4X0MQ=; b=HZFOOtx3XIn8cW
	kUNPNQGNRJHSwf3UdgStVG/3ShSGsdNUmEWC4DBS3WC2Xq6r9yqz1Di1lJ7FuQQb33F+DSUCMfsA4
	xaCn7gS/IYGiwJySzPYkw/K0rrTMYUnKSxR1Nk//8+8IM6KUzVe+zwjEiKbt2uOA/lrNFXvDHnyNQ
	qGdxyZkduQeqCc2H9JNgDvn0U7K+aN53caQOVTH2nb7f0htgdBXd/u98+rFwVnnxp2DGS2YjZSnG2
	uKJz9CL3epY49+tThIcle4jw0vnhM3B4j949G5aQ5xoGAmq/9iC5ISZsI5/bymm9t4f76bZwEiiUm
	l1UAUEWSHV61+pdFvaZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDKk-0004TK-RW; Wed, 09 Oct 2019 14:52:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDKb-0004Sm-4h
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 14:52:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id m13so2773169ljj.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 09 Oct 2019 07:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XCXUjJcNKf26Uf0oo1dhF34fBlStvRWYo4RNEOhy90c=;
 b=NERnuAnH5RFcoZ5zCrcx/5f4T4F9uls22IY7XEsY8x5E45Ilur2Cclw/a0fVgrkPUt
 FNQjG79+I+3CHdKw3VkG548ZLxkmez4J0+irRYcGmVix35Qf8k3K0OAfeQ6QgYt8pJkW
 AExbzTBXpnIVvdUpshBgbNgoT/VUAS+H6SBftLMbtdkpHassZm3vjeiWzBdFVVvpIdSI
 nAeuvmnaLqBXheAr7VV62VKu0s5XYZtW374/xCVBeW2uM5oXc9kJ2N+0Mh8Plm5E1B4O
 xqYYp52FWkCD55TrnlRTPOfeNpKUKlTZtKTfCISAiGDa8fEOx3xXKmQ0Tc6H37jFteAS
 eVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XCXUjJcNKf26Uf0oo1dhF34fBlStvRWYo4RNEOhy90c=;
 b=he2HWO9tSWnohWe1szY3ztBbDr6zB84QUA3hWGQ6dfT63ujS3snwjqf7QZGYcEozD3
 DEtR4QN57Hwni2ND3K279im7vpN5oeoqyZYwDsZ5Y6/S2LkdktO7IdXkcOs6QsPo/fjd
 /+KsslndN6vQ0WEC6MpQT/OK/rWI5VymYS6ODteRV2+ibYNFOfK+wWTH4hcl4LGwcLRk
 9h8+hFLRRf7qLSdKnuMI71zpvtGbgRzAjAY7AXh5aZFZTtN4zBwpi0lMXpY6uhRbtkju
 yNoj9BO4N5h+nhJXFmi9NcUoZyPqiYV2Z1L5CNXcbR9JfQXTg5NxOCEnCqXNUUvCmpYW
 23mg==
X-Gm-Message-State: APjAAAWa1vD+Plf64fJpGC6bAVbP8jFQnEKF//ECinnyJktWvIoFbtK1
 yGCxduPx3KR0S1a8OoSdliXQ4WoS4ZdST9PlzQQ=
X-Google-Smtp-Source: APXvYqywmoafhQvTSlWdr193aWtN3ERVrNr8nXUqOeEotO+pEdwynynViG2t7w4DPuw2+o7ScfF/kTXLNUcefa6rBeQ=
X-Received: by 2002:a2e:750c:: with SMTP id q12mr2597481ljc.138.1570632766534; 
 Wed, 09 Oct 2019 07:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
 <f67728d2-88d6-433d-74f4-671ca22599d5@phrozen.org>
 <CAF1oqRD6fe0Aif=1AFhTO-ccW-sVFPcgCdou2ksN9vEKFduqCg@mail.gmail.com>
 <00a2f245-2a85-e597-e6a8-74269d0f31ae@phrozen.org>
In-Reply-To: <00a2f245-2a85-e597-e6a8-74269d0f31ae@phrozen.org>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Wed, 9 Oct 2019 16:52:35 +0200
Message-ID: <CAF1oqRBz8sNObj42A59AC24HwgFGS0RGiyEQdspnk=Kq+CGHtQ@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_075249_186747_C17D6F4B 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: add a hook before mounting the
 overlay
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

T24gV2VkLCBPY3QgOSwgMjAxOSBhdCA0OjQxIFBNIEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVu
Lm9yZz4gd3JvdGU6Cj4KPgo+IE9uIDA5LzEwLzIwMTkgMTY6MzQsIEFsaW4gTsSDc3RhYyB3cm90
ZToKPiA+IE9uIFdlZCwgT2N0IDksIDIwMTkgYXQgMjo1OSBQTSBKb2huIENyaXNwaW4gPGpvaG5A
cGhyb3plbi5vcmc+IHdyb3RlOgo+ID4+Cj4gPj4gT24gMDkvMTAvMjAxOSAxNDo0MSwgQWxpbiBO
YXN0YWMgd3JvdGU6Cj4gPj4+IFNjcmlwdHMgbG9jYXRlZCBpbiB0aGUgZGlyZWN0b3J5IC9saWIv
bW91bnRfcm9vdCB3aWxsIGJlIGV4ZWN1dGVkCj4gPj4+IGJlZm9yZSBtb3VudGluZyB0aGUgb3Zl
cmxheS4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQWxpbiBOYXN0YWMgPGFsaW4ubmFzdGFj
QGdtYWlsLmNvbT4KPiA+PiBIaSwKPiA+Pgo+ID4+IHNob3VsZCBpdCBub3QgYmUgL2V0Yy9tb3Vu
dF9yb290LmQvID8gd2hhdCBkbyB5b3UgbmVlZCB0aGlzIGZvciBpZiBJIG1heQo+ID4+IGFzayA/
Cj4gPj4KPiA+PiBmdXJ0aGVyIGNvbW1lbnRzIGlubGluZSAuLi4KPiA+Pgo+ID4+ICAgICAgIEpv
aG4KPiA+Pgo+ID4gSGkgSm9obiwKPiA+Cj4gPiBNeSB0YXJnZXQgaXMgZHVhbCBiYW5rIGFuZCBJ
IG5lZWQgdG8gY29weSBwYXJ0cyBvZiB0aGUgY3VzdG9taXphdGlvbgo+ID4gZnJvbSB0aGUgb2xk
IGJhbmsgYWZ0ZXIgdXBncmFkZS4KPgo+IHBsZWFzZSBkb250IHJlbW92ZSB0aGUgQ0MgdG90IGhl
IG1haWxpbmcgbGlzdApTb3JyeSwgSSBwdXNoZWQgdGhlIHdyb25nIHJlcGx5IGJ1dHRvbi4KCj4g
SSBkb250IHVuZGVyc3RhbWQgdGhpcyBwYXJ0LCBzaG91bGQgc3lzdXBncmFkZSBub3QgYmUgYWJs
ZSB0byBoYW5kbGUKPiB0aGlzIGZvciB5b3UgPwoKV2VsbCwgaXQgaXMgbm90IHRoYXQgc3RyYWln
aHRmb3J3YXJkIGFzIHNhdmluZyAmIHJlc3RvcmluZyB0aGUgb2xkCmNvbmZpZ3VyYXRpb24gZmls
ZXMuIE9ubHkgcGFydHMgb2YgdGhlIFVDSSBjb25maWd1cmF0aW9uIG11c3QgYmUKbWlncmF0ZWQu
IEZvciBpbnN0YW5jZSwgVUNJIG9wdGlvbiBhLmIuYyBtdXN0IGJlIGNvcGllZCBmcm9tIHRoZSBv
bGQKaW1hZ2UsIGJ1dCBhLmIuZCBtdXN0IGJlIHJlc2V0IHRvIHRoZSB2YWx1ZSBmb3VuZCBpbiB0
aGUgbmV3IGltYWdlLgoKPiA+IFRvIHJlc3VtZSB5b3VyIG9ic2VydmF0aW9uczoKPiA+ICAgLSBz
Y3JpcHRzIG11c3QgYmUgcmVsb2NhdGVkIHRvIC9ldGMvbW91bnRfcm9vdC5kLwo+ID4gICAtIHVz
ZSBydW5xdWV1ZSBBUEkKPiA+ICAgLSBpbXBsZW1lbnQgdGhlIG5lY2Vzc2FyeSBmdW5jdGlvbnMg
aW4gb3ZlcmxheS5jCj4gPiBXb3VsZCB0aGF0IGJlIE9LPyBJZiBzbywgSSB3aWxsIGJlIGJhY2sg
d2l0aCBhIDJuZCB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2guCj4KPiBJIHdvdWxkIGZpcnN0IGxpa2Ug
dG8gdW5kZXJzdGFuZCB0aGUgdXNlLWNhc2UKPgo+ICAgICAgSm9obgo+Cj4gPgo+ID4gQWxpbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
