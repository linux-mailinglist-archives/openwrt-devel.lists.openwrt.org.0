Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB9E1D79E4
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 15:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QH+cipbgjqXP3lSmSnfysgqB8AABUTD1tKcr7JrkbPk=; b=dnYpifRcrUjL95
	2AckN9Q/mz7oiiBAyjwRJi8zqBqx30cq99bIlilRI0cT2frgBePSC3Sn27e2fZAn1Kl4L1UiI64Rq
	pvvCVxVSl8EpFQ1CJ2FcnLRDQv/x1o9Hs0ZwA0+9lPnyiEnKWLJ4OmFRQzp+nXox0MOb1+Q1OGo3k
	Da6wvlwz6fMKh7XD0DwM87a/ZPOApf+JXcgl+l4wVkRs0ql+ImmoNKQ1pe+K08vGxv4DQR3xgCh6b
	O1ZwHOrtXj5Y+gwMcxGCGTDTuz8jKLY5LvA1hLVZJZb8cSjRl8h91Bt2vaBijGuZngmkgoz2u2Wp+
	6uOJme1MTgGivNG3L6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafs0-0006ZT-Ng; Mon, 18 May 2020 13:31:52 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafrt-0006Z6-9k
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 13:31:46 +0000
Received: by mail-lf1-x143.google.com with SMTP id e125so7279715lfd.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 06:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bCZKce7GNATCoonTS7GTH7Lh24mxKy9ju4t92v1xpv0=;
 b=kJhKCnlXE0rmBMTVfGFL06JxPMNHL0JdoXH9mJynRne5SX5Otu1xFW5z377pPOGu7E
 I+sYUhTMSf4yZ1p4LcjMB8y47wDcciCG7PKIyFoU8eIGRq8aiM3/UyEEHSq/XGgWuGJ0
 K8Dz6ec2uo0BQWfD/9SXpjN+unuMxqLeW84ieDErF2ZccvXN0N6Ohq5hsUsvNW8dsnvG
 jd5xAsrTzEPO1Yi0/EhSPUqxOJRnN7+mx42dHYYKrWbajrBGBJWe2i99ongKHmzbcLrr
 TgS9x6TtPBY1QJpba8oqo0cKG17esOvrq5uvaZEIYkMI4xsHhVaIa3lyNjJyDazeoUge
 dvAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bCZKce7GNATCoonTS7GTH7Lh24mxKy9ju4t92v1xpv0=;
 b=EoUMLa+NcwWKBMfn5wreGp3EI9Uumd+C04gDBPRsreYQjMef0+qd82EUDvBjCaNn4o
 +9uNNMkdIdXHx8hS0lya4HF0/WU+vI6kVxJpYkWAVi5SwaBwJsLE1w6ptAPoZap9VoSW
 6gPheEYPtdyZV+9flqVb0ewhFan55oirp2eggAWO8ZiAxxFRoSf1FuCHR4We7N+BEQt1
 q5g/uAHPRR2usFROi15kZL6PqHzDdbL6a2hJfLeaoauAoc7IWAJopRFylBappczaJH9N
 SHPJD33Ce9Uk0IQx++SctLqx0rzI+vCDHBBfS4a2R/3fJ9+4ARlsYSgZYgLD6oW7Aivt
 rGCA==
X-Gm-Message-State: AOAM5325rK6Wx0yoSu5eaw5dtJQkzAk6NKvZnAsVjf+ICaS1rzZXEokl
 bM0M1WLiuoC4Z5teCS2nUfS/n/+ouWs7c6k8olaQWw==
X-Google-Smtp-Source: ABdhPJzmkLGKWuvxRvZ136NqZryZ6Qg+RnXLsIecGSv8q0K2jRWIdQB4y146V5uIJcynLi8H6oQOGFjZJm5RoJago34=
X-Received: by 2002:ac2:414c:: with SMTP id c12mr11632897lfi.47.1589808702373; 
 Mon, 18 May 2020 06:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200518130415.54668-1-linus.walleij@linaro.org>
 <20200518132701.GB87253@meh.true.cz>
In-Reply-To: <20200518132701.GB87253@meh.true.cz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 15:31:30 +0200
Message-ID: <CACRpkdYUWETtgiviuyvyK9+VM_=WMFWfUnri4ZoXfBhVr_JuxQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063145_342125_793C2C8E 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Add samba4 to the NAS images
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCBNYXkgMTgsIDIwMjAgYXQgMzoyNyBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IFsy
MDIwLTA1LTE4IDE1OjA0OjE1XToKPgo+ID4gV2UgdXNlZCB0byBoYXZlIHNhbWJhMzYgYXMgYSBw
YWNrYWdlIGluIHRoZSBOQVMgaW1hZ2VzIGJ1dCB0aGF0IHdhcyByZXRpcmVkCj4gPiBpbiBjb21t
aXQgNzNmYTFhYmE5NGY1ICJzYW1iYTM2OiBSZW1vdmUiIGhvd2V2ZXIgaXQgaXMgbmljZSB0byBo
YXZlIGEKPiA+IGZpbGVzZXJ2ZXIgc28gcHV0IHNhbWJhNCBpbiB0aGUgcGFja2FnZSBpbnN0ZWFk
Lgo+Cj4gdGhpcyBpcyBnb2luZyB0byBlbmQgd2l0aCB0aGUgYnVpbGQgZmFpbHVyZSBvbiB0aGUg
c25hcHNob3QgYnVpbGRib3QgYXMgc2FtYmE0Cj4gcGFja2FnZSBpcyBub3QgYXZhaWxhYmxlIGlu
IHRoZSB0cmVlLCBpdCdzIGF2YWlsYWJlIGZyb20gcGFja2FnZXMgZmVlZCByZXBvLgoKQWggSSBz
ZWUsIG1ha2VzIHNlbnNlLiBMZXQncyBkcm9wIHRoaXMuCgpZb3VycywKTGludXMgV2FsbGVpagoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
