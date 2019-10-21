Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADC9DF4DE
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 20:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5Bbb23/OOFCwHDK32jCS/i8I5GVrfvpsUfzsabdVPA=; b=ppIra28iiX2crG
	KgSwHFW+DsOEkU9Rz8Y1I1WmBXmYTXMoFbw+VJA0k/01qCB6R/fIGF9OL+C+6srumjW4Dy9FoEu0T
	uTnJbWdNZeFkU20yR8V3GHMclQ0T0Vao9Mk8HcX0w0lSRbslhfJxAimxOBWdS+wv+UCo1y7KFy6C7
	+dGkKOchDIybG6pjmzdme+AjVBRb3Ox5ZvmnxblsV3qdPQucXnOXt5Hd+CZORq1d85hhzi64YNzuR
	zQOC9bOsKrMKbZdaEVlmraKrbnJCx40fot0KU+7tPTvql7zAyZf8k64nBfLiQhu8/6MNZtMcWD8Pa
	46om9UyF1BDBz7iBv9sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc8D-0008GS-Tz; Mon, 21 Oct 2019 18:10:13 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc81-0007or-Hx
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 18:10:02 +0000
Received: by mail-il1-x143.google.com with SMTP id m16so6489218iln.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 11:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XPpB6ncs28qAP0dLcm0wPzPD4bXgZEQSgTmqu8gLaHc=;
 b=lBNkcztEisC2cL/kx8w4AfDbvWRK3ayxiqQrdbb41U1Q13bgIfPyk/LCkT5SBFtq2o
 n8LVw162ORvlxT0ht4GUwRaHh+Dhmko/KjQyd1lN/YMvRn5skulqYLoew7wu+hqJX+mv
 qbXqTZl7BqR+G/P/ew8YO9sKzIPePJA5psDkbUZc9WCjPmLgAPzvKZWOqFPLtmT8jlZ9
 pjAX6AEsRtAH3OGSQUUwD0XenAq0EdNhMxHNvrkPlJjh7WjXBttTV0KojKTiObg/z1aS
 +qxL9J0kOtZDkmq4sVw52URKBUIkFz9qyrD0x5P29PPjh2Gn75PsktsyyV3sUjlnZgR8
 +Cig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XPpB6ncs28qAP0dLcm0wPzPD4bXgZEQSgTmqu8gLaHc=;
 b=dtBkS2AWQ0O+Ra2wLiUsvG7/dBq45fejN0iE2daE0JKGEP+vuafPMCFVTPjJADNYlY
 uizv9J0Ioa5AsgXDk3JhJFmmTwDKBOZF9OCA+JFwSp6lkMYvjJiYyajeqDPXkPCpCPUO
 b648eWF1rIXvlNXyy4EH/4AkyZ6KcF2Z7jhfUGZav2BCwDxnNLKOyQIWek/NfBCA1gQ7
 u3j5LwCxgcRpZgM06XXOGtX0mX00eMkzC5cVl3HG3lxe4KotRes+IQiNHOO6BkZT/plK
 ezyPKuo5veKuZikk4PhSST6Y0Ir6J4xLZ5iAIb9ll8rvbaCLKoSiGu3jrvtil2KEVBYq
 WUEw==
X-Gm-Message-State: APjAAAXb/qPO6mTJenuUd7hyqMEEY3TyCy/sijPBsXpuQ3MgWy0gDfPK
 lp7okYIUl7SF4n1qmZhh2Vqm0Ip3kP13xRqWhtU=
X-Google-Smtp-Source: APXvYqzziE5gX1rcSJEXnVuetMyL/WTWcyBd0BQDPhUH57Zf2u7+G/i3pXJ0cMWpaKbe9Q6qtkXGdcalO1RxyJtBp6g=
X-Received: by 2002:a92:8408:: with SMTP id l8mr4501376ild.107.1571681399805; 
 Mon, 21 Oct 2019 11:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190831093936.20621-1-kristian.evensen@gmail.com>
 <CAOX2RU6__MtzhWT5XRcjAXHaLqxb+u4970y8Pf9UjGUAdkdp+Q@mail.gmail.com>
In-Reply-To: <CAOX2RU6__MtzhWT5XRcjAXHaLqxb+u4970y8Pf9UjGUAdkdp+Q@mail.gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Mon, 21 Oct 2019 20:09:48 +0200
Message-ID: <CAKfDRXi=cm5ZrhHa7fELDqjCXhB=GNorViqmMy0zB3SM+ZLqYQ@mail.gmail.com>
To: Robert Marko <robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_111001_620467_2DFEA791 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ipq40xx: Add support for Unielec
 U4019
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Mon, Oct 21, 2019 at 6:07 PM Robert Marko <robimarko@gmail.com> wrote:
>
> Merging this today has caused a regression in ipq40xx.
> PHY reset patch was is the issue, it now forces devices to have GPIO
> for PHY reset which most devices don't have and if it's missing it
> will make the driver panic and probing will fail.
> So please revert this until its properly resolved.

I am very sorry for this mistake, making phy-reset optional completely
slipped my mind. I will not have access to an ipq40xx device before
some time next week, so I am fine with reverting for now (unless
someone else can take a look).

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
