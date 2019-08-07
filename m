Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D168D85358
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Exfid98HOAguP2hIXLjq5Hsf9gUzsZ3gAGhaATj14BQ=; b=SZogxdUEHZkOlk
	BmVT8ZrXAKSH0IsNUpiPkkrym7u1cru9YI4Ej8zI1smPQ9Oc6CO6R0euLZUagq65K1aEZLDkzNhYG
	cjb9PP71N/tzz7jqODGzrn09dmePVsbK0WbPt/9Hps9FIgB1iSFa46CwtGQUrfEjiMrApgPm4oGDk
	vjxch+d4Vv4GsA4MBc0fGYHQ9rnuNMwXjEpO805RW1lAAKdYtxV/8v2QcI5mynolobTx5lJBqOOXO
	aC3gmG9A5mVxrsfseTeai1hSz1e2FfvVgW31PJjUTVh5dv1JTe5y7LDEWDBmF8WTbGoV93ZhHwVx0
	OcqwaGif6VS8X/rbf3vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRAP-00055D-9D; Wed, 07 Aug 2019 19:00:09 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRAC-00054f-Cz
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:59:57 +0000
Received: by mail-ot1-x341.google.com with SMTP id l15so51303188oth.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 11:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Um0MJ09l+Ldenjgoss4ZMH19PShvr5YjJeXlu/vU78I=;
 b=WHTkPlund8mYfqx9dM9SzKbeJZOFI5oMfexxfD1H59Nyr4AdhlNBJj3yheDg1Gn3JU
 lihyXtGw7mASByib8AViVjnHyLOiXSFMcOwjDnt3XWqlEviSAWb3TbqjulmYI1IwJ04v
 4jh+97Bx/M6+yU9lrunOKYyq2xLqSDUz5Op0DB8M+pN3eyHonfmMbWhpVUq0JyF5/rJQ
 VhzLiOHgfwvh+GAZsbVP/+YfgNShd96lQMXgUga+eU1AJKZfuZ8wAHot0GUsyc8sr57L
 dJvpvts7lR+hVHpq4ncdjugX/ED9M/W61XaXwp/tLOE3/NF/dq6rgFcrkKG2vG8qq+KQ
 xCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Um0MJ09l+Ldenjgoss4ZMH19PShvr5YjJeXlu/vU78I=;
 b=uEYmp8Xg7WkNREVsecF28KdFjTtQ8K3XW57LI0Lm/lGBPYQ2L9Xe6MMspTvHEVtXMJ
 Rimig6psI5wU4S33PE2lbWjPC1gLnhjJ/AajgFg3GzYxng6AR8EEsSxnis3m7NxrN/Uj
 YnH5umiI3I+8MUx8tkU43sBq7VuZMfGh4dqEKArFg4VUj/LbrIW0pMgVAlZEl6jSd5KI
 +38yEpPKZDs69hKs9+N7Wa+qw7jbLt/8ZR0zIh8X9vG6XQz/rdsn9dXNS8ugnvhzpZTw
 G95sfix5SdiL6rTjxyhZdpBYnptQF+HnnKIi38hcUK2oNP8WMudGVnB/uQlGenSTBZYf
 Fxlw==
X-Gm-Message-State: APjAAAWkhShb2AZsZBN1/84cljxCr6c9c/c57PiZHA7xjpGPCaxzbfqn
 14S6jsiv/KySdTyH2PiEJ7uGyaym4qrRlzdumR0=
X-Google-Smtp-Source: APXvYqwB2yFsJmok1n4m5k9Vq20d4aGNHH2wB5Ezme4L8B1ig05soYlAb8yufOMewq/tjoXtBGmrsGm3La+I3HpVAjs=
X-Received: by 2002:a6b:b556:: with SMTP id e83mr10404347iof.94.1565204395771; 
 Wed, 07 Aug 2019 11:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <029701d54d50$a21e6100$e65b2300$@adrianschmutzler.de>
In-Reply-To: <029701d54d50$a21e6100$e65b2300$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 21:59:44 +0300
Message-ID: <CANoib0G2vm8uvcbhA3CzwvUhac2AAZrERM_etDHYVJO0m05iqw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_115956_451566_AC1C162A 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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

U2VudCB2Mi4KCtGB0YAsIDcg0LDQstCzLiAyMDE5INCzLiDQsiAyMTo0OCwgQWRyaWFuIFNjaG11
dHpsZXIgPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT46Cj4KPiA+ID4gTm90ZSB0aGF0IHlvdSBh
bHNvIGhhdmUgdG8gdXBkYXRlIHRvIERFVklDRV9WRU5ET1IvREVWSUNFX01PREVMIHN5bnRheCAu
Li4KPiA+IEkgZG9uJ3QgcXVpdGUgZ2V0IGl0LiBXaGVyZSBpcyB0aGlzIHN5bnRheD8KPgo+IEhl
cmU6Cj4KPiA+ICtkZWZpbmUgRGV2aWNlL25ldGdlYXJfd25kcjM4MDBjaAo+ID4gKyAgJChEZXZp
Y2UvbmV0Z2Vhcl93bmRyMzgwMCkKPiA+ICsgIERFVklDRV9USVRMRSA6PSBORVRHRUFSIFdORFIz
ODAwIChDaCkKPiA+ICsgIE5FVEdFQVJfQk9BUkRfSUQgOj0gV05EUjM4MDBDSAo+ID4gKyAgU1VQ
UE9SVEVEX0RFVklDRVMgKz0gd25kcjM4MDBjaAo+ID4gK2VuZGVmCj4gPiArVEFSR0VUX0RFVklD
RVMgKz0gbmV0Z2Vhcl93bmRyMzgwMGNoCj4KPiBJbnN0ZWFkIG9mIERFVklDRV9USVRMRSwgdXNl
IERFVklDRV9WRU5ET1IvREVWSUNFX01PREVMLgo+IEluIHRoaXMgcGFydGljdWxhciBjYXNlLCBE
RVZJQ0VfVkVORE9SIGlzIGFscmVhZHkgaW5oZXJpdGVkIGZyb20gYSBwYXJlbnQgZGVmaW5pdGlv
biwgc28geW91IG9ubHkgbmVlZCBERVZJQ0VfTU9ERUwuCj4KPiBIb3dldmVyLCBoYXZpbmcgbG9v
a2VkIGF0IHRoaXMgYW5vdGhlciB0aW1lOgo+Cj4gUGxlYXNlIGRvIG5vdCBpbmhlcml0IG9uZSBk
ZXZpY2UgZnJvbSBhbm90aGVyLiBVc2UgY29tbW9uIGRlZmluaXRpb25zIHRvIGluaGVyaXQgZnJv
bS4KPiBJbiB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgaXQgd2lsbCBiZSBlYXNpZXN0IHRvIGp1c3Qg
Y29weSB0aGUgZGVmaW5pdGlvbnMgZnJvbSB3bmRyMzgwMCAoYW5kIHRodXMgaW5oZXJpdCBmcm9t
IHduZHIzeDAwKS4gSSBkb24ndCB0aGluayBpdCdzIHdvcnRoIGNyZWF0aW5nIGFub3RoZXIgc2hh
cmVkIGRlZmluaXRpb24gYmVjYXVzZSBvZiB0aGUgcmVtYWluaW5nIDMgZHVwbGljYXRlIGxpbmVz
Lgo+Cj4gQmVzdAo+Cj4gQWRyaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
