Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C4FDECFB
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MMB3RrFHPUxs24LTXlcv+QeMCnEQbydh6PDXDf20q0=; b=LbC39gPYMQkP05
	qgHFxLo1xKwSwPl1O/gQ0ShkQciCjuNqdLXmUp7xHDi5yKvz+67G9kXekzLZ3su68/ysRP55BDuLK
	JbYXSaUmfueYETksgFtz6klL8790JEi1vC4FCCS87JELsJNJJ1j1B9X4ujwE+I8M1eDRYaBjVBZMf
	2L7ETQXtqigF7DJMmUt5XkUR2+w4H+wofs9ciKUIDj5vRVmg2E9lk2VM4+FJHznD3ypbpZSGexqme
	DcqLCqhnvSm31M7jtFmo4qL26XbOwMt7p9jDj4qiqkVnA4OjcN3fc0Y5p2Wgl56IGVh/VdGCPZhJP
	Gzg6UZJEzY7C8D4I+CnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXJw-0005P3-L7; Mon, 21 Oct 2019 13:02:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXJp-0005OG-M2
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:01:54 +0000
Received: by mail-lf1-x143.google.com with SMTP id g21so8917119lfh.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 06:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zQU2XpRmYwqvvdmtEVx3IGH+wYsRLb3iCSqj0/xynNo=;
 b=gF/ypKTOC+kbhHz1txlE7EpQUYAFKUbCVBUPXZGFoDIHS0fRXvkwllVZo+6sSgtymq
 CQMYKWSRYrwq3+IfMJVZtqV60XMAjqj3FdHc6fq8E8DbG+goGz+wAjPqBYKjunyz9XUx
 h5+SZ4qrsFYB/YspFUvYKFUsh49sJlRty4RmM6EGaO7ksdivxgJU15axMyEjSjpEzfDy
 50T7lVPeDYdAAmBHc1Fe010YUflzo+K++aZr4aRSZxhlm9l5W0R8fy5X0WxRk/r3lioe
 k7SKReEjb1h7RnhyopycQVDqNE7b93jgMdikyRCeEXgriK6W1tdj/cPjEhyMc+nGZJmc
 67FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zQU2XpRmYwqvvdmtEVx3IGH+wYsRLb3iCSqj0/xynNo=;
 b=Ydrl2X+7JZA6QmHMZyzepxSnB8zk7lOTiw64kxMBIj6tWR6rAIGuOsDMnqBEhvEZq1
 4G6QbhbxwXitjeI9dTVt1CkPPqDsavSpf6EqTB2WqSoZtwFEcKRFxqt45QWJ++yXGYWN
 NdA8pksAzFmXZgo1ogdYKRtZxyisTNXg8WyxQi0wUXC9Qf5eNWYzfgobtiA9Fo+BGdrU
 h4eJGl62LOw5W+Ca07CE6LSfISVuPmnf9/NOGQQZ+AVrlmJPFAqvJ+O1EVVW2A6ltXwE
 hqJYZuuP3lNB0YzoHGxS9HDRQtz+T9jh17yaDqkuH3CeUXU7lF3QTVSNLMWYYLEsfPl9
 5+sw==
X-Gm-Message-State: APjAAAX33VK2kPHJJeWHbdbqFEX7CiIiAFYRm7W0CRbQ8194YJgGD8Bq
 6MTxGu7GRx/6Fjr60JOMslobiGDHDaTCTyy9fafxT0kbM+Y=
X-Google-Smtp-Source: APXvYqxtjWt1fXtp4T3N3DSFAadmmB/o5o9JHKZ16c4ylhF4lRPZGsKI6BcxQmJuw7nPbDRwkFM8HKXK1ln2qyoTX6I=
X-Received: by 2002:ac2:54b3:: with SMTP id w19mr1285372lfk.66.1571662912014; 
 Mon, 21 Oct 2019 06:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
 <20191021104405.GC52694@meh.true.cz>
In-Reply-To: <20191021104405.GC52694@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Mon, 21 Oct 2019 21:01:40 +0800
Message-ID: <CAECwjAiYVKJHD6hdn920AZdXa8xqWY+WdjjZKByt5=KM0VZ1jg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_060153_715757_E6B52F43 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH rpcd v2 0/6] memory issue fixes
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCAyMSBPY3QgMjAxOSBhdCAxODo0NCwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBZb3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4gWzIwMTkt
MTAtMjEgMDY6MTA6MjVdOgo+Cj4gSGksCj4KPiA+IFlvdXNvbmcgWmhvdSAoNik6Cj4KPiBzZWVt
cyBsaWtlIHR3byBwYXRjaGVzIGRpZG4ndCBtYWRlIGl0IHRvIHRoZSBtYWlsaW5nIGxpc3QgYW5k
L29yIHBhdGNod29yay4KPgo+IC0tIHluZXp6CgpPb3BzLi4gIFJlc2VudCB0aGUgdHdvIHBhdGNo
ZXMgYXMgcmVwbHkgdG8gdGhpcyBjb3ZlciBsZXR0ZXIuCgpSZWdhcmRzLAogICAgICAgICAgICAg
ICAgeW91c29uZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
