Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29019A5C9A
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 21:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rr9aQFj6GNCKcZvJg4UxT0BoxXDYO4UBpQn4VzrxPA=; b=b836OVrFkxzsxW
	WazEh+5TxxxliHml8ZtP3giNGddah+hupAYH44dnfungQ1ar+1otgXidWsCge4qFhBlrSkKvnO5Yr
	50OK49EucpvDaEP1sUMvwjfBPGjzoRDYgDw0mQtBKxP2vuA7CKjSzY4Os1+4ZfnwfgrpyQzIT2v24
	6eUkmV7+lq7dYNRBT9F6knppufX2iuW9C/pwLnYbrnVS1Mv+yGUsJs+Dj00Il4hyTt85Vy1ThycFh
	NBlUF1nM0mtRWgGXAOBr4K+Ad0Hg9l+WZvbza1Zcs78aM3gQMmPNoAlAhF3kbFuED+zrhmETEQtd/
	Mtfy8nhWK+xQ1YuUD8JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4rnr-0000jX-Ls; Mon, 02 Sep 2019 19:15:51 +0000
Received: from mail-yw1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4rnl-0000jB-40
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 19:15:46 +0000
Received: by mail-yw1-xc2d.google.com with SMTP id i207so5010902ywc.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 12:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1nnyoQTjqjKMo9zqpYv7VEl3W+q94L1bTNelBapQLpM=;
 b=ds0Hh+EKefw9l++u226fJQ7ZiHn3xrcXzH1RrZ4MwvvQo7apfIYvUQEX49HFxY/z/t
 X7KkqYwpo3K429ZLrp5vBzZZkloEJSBeKVWO491ZeEj6+2ow/Vrn+mljG4acoLDP7wd3
 j6IsfLctkGHFvaXHyB/QcS74eD7bxAc5p+DSHrGN4WHvcNhQCC8jC68uIpxSR/2Iq1UF
 CPQiU4U0Xhy4gwrGRdmMcAcWunaaQpZyHbgStvJ9KHmrzH7V1MFUgOl9CIZBw+yk1+gJ
 BGg2Q8SddIcCK6n0WyZATTN/ZPGl/qn4f0iNvGY5lvpPPH++IkzjsrrKD38pjrz5YjZO
 Xu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1nnyoQTjqjKMo9zqpYv7VEl3W+q94L1bTNelBapQLpM=;
 b=QhfhiNV8TZkH/ctOlP7CgBy1oocvTeQ5qF6P96z/2B7GhjqcRs1i9dUUnC7vNs47Ig
 eSIpERASy1kmRzFxZWqmdhjnery45Q/jSLJo8uigUwHVYOM3xs9E5a+InovGW9eE2uSf
 4lvYGgp6ZriWMeiAgLefqFMc8qp15+5Y68sNW+CtVWaGREMAWc0sJEpSi58Hi1EZ7h3b
 aYmn+dk9wVtCa1OiFXjjMiEHDHR+zu1NBxRuTyFyEA/ZWbcPPnzDlVxgbyy62ZzxQMKp
 pa4vLzFkY1isXM4WQmh+80gQ78brN/gWYzBWXmW/4wFlbEcx4TKfisGxzfr7/IBzj9Bk
 Axgw==
X-Gm-Message-State: APjAAAXAaNVxpHrGHsJw7+7LXltRrQmXwoddW6fi0mn44VCxvZVdMq78
 QdfwoqsYdFyfzl2H3+qR1IwW9pvOr4MCSZqCujM=
X-Google-Smtp-Source: APXvYqyvv2pNlEfFMGYvqC6SXKoJ+QJHnvg2WN5U3zPiWk2Bfu7fUYNEz5oycvkCpspY2aIDtKwLH0s9d+cXAFjwVdI=
X-Received: by 2002:a81:af21:: with SMTP id n33mr3354964ywh.131.1567451742608; 
 Mon, 02 Sep 2019 12:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <CACna6rwS8WB1mmuxbod3OhZzdgSkCDEBLOULDo3hraOOedhknA@mail.gmail.com>
 <AM0P193MB045069422B657BB10D556627F5BE0@AM0P193MB0450.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P193MB045069422B657BB10D556627F5BE0@AM0P193MB0450.EURP193.PROD.OUTLOOK.COM>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 2 Sep 2019 21:15:31 +0200
Message-ID: <CACna6ryiAU84ip6S5gwHv-shBvokd+Mj48e8ZbOgLAy+bWbMuQ@mail.gmail.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_121545_190253_22A60D2F 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] RPi Zero W: broken serial since 4.19 switch
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

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDE2OjUwLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5v
bHRhcmlAZ21haWwuY29tPiB3cm90ZToKPiBEaWQgeW91IHRyeSBhZGRpbmcg4oCcZW5hYmxlX3Vh
cnQ9MeKAnSB0byBjb25maWcudHh0Pwo+IEkgcmVtb3ZlZCBpdCBmcm9tIGNvbmZpZy50eHQgYmVj
YXVzZSBhY2NvcmRpbmcgdG8gaHR0cHM6Ly93d3cucmFzcGJlcnJ5cGkub3JnL2RvY3VtZW50YXRp
b24vY29uZmlndXJhdGlvbi91YXJ0Lm1kIGl0IGFmZmVjdHMgdGhlIGNvcmUgZnJlcXVlbmN5IHNs
b3dpbmcgZG93biBzb21lIG1vZGVscy4KCkl0IGZpeGVzIG15IFVBUlQhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
