Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E0FC087E
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Sep 2019 17:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uRxYjKEvIaXkIuwv6emQnM3OfyVBxTvaorp0O2l9XOA=; b=XADqoK8dC1GIg0Co3BdBzyBBN8
	XdrzshZhVHt3QSs1UfiZ7ELuA9Dk0HsRgKCez8ymR1rjIzvPd7m3WRgaGF0NHGyE9bgduKKitXnUr
	ZNL7Hvn31u1KwNl+zOsXvTaWMahhXfHu0BRR6vxVSb5wabBe3hOpoclVT4aR2MAWJrR3ix+Qi5147
	q1EGy+JEsIMJVJ/9ydIOy7kj4+q5vhLSPMrAAsxQRs11Tv1Dw0RnnSoatYCFxKhOfAMBNji16+kAD
	kFUwD9H7VMvQ9LSZuBT2iuX7nj9oDzdKLuSqccB9wvLryoYeEAdgB/SOjwDWpHyxTerB0FwBnS/nD
	IiQbemKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDs6d-0000X0-S0; Fri, 27 Sep 2019 15:24:27 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDs6V-0000WN-IZ
 for openwrt-devel@lists.openwrt.org; Fri, 27 Sep 2019 15:24:21 +0000
Received: by mail-lj1-x233.google.com with SMTP id j19so2928171lja.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Sep 2019 08:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=dLbLPdjtHVGQZpMv1h5odqiXCfpXBuZFkBpjNjiVwC4=;
 b=rMj6BJb4s822eEk9IwEnBsOBpBREq8Jfm+o4dkX5nMxAwJ0HMP0wJWZjHxycJFTcnl
 S47Hca9Advc9QEhXeaEOQXSbm79rG/rI2SWhYTe7jLRe9yiQPQdRFegcC3iZDbP5ID8Y
 5VIxGUUMNKUvruc1B7zTcIqOPBM+Qo4ehsRKojeVHeFdr9H3/28DWMaIsf1sI0Y/aN9Z
 /OhMVdS5kuoDrUVRk67NbKr5isnSmDuxzeoUp645qSACEj6+pF7NyI9StsQlmrZqL1lN
 woehD/TlO4cdjmD2HJS5oQTm9prgB3+o/s6Q2z8FOXdCuUfUn9PX4z2KPgcFaVqK3BCw
 5/AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=dLbLPdjtHVGQZpMv1h5odqiXCfpXBuZFkBpjNjiVwC4=;
 b=cUfd5lc8Ed8UMfjqqp/ISO42YGg5CiB9/xmaOs1C1wKJ6fkblqjzKPcr7qsCrvn4ke
 h/RZvrY2QzNk+AI5U1SQL0JU/bHy2Fek6YsayfhR9ErjdmMlfOV1UKOvUeCrXAycE/oR
 wod0ucjspArL9DQ/CfhoCINUWBuWTqggpvTEwwbGP5h8wGcyhR/pQklO9KKm6fFjX1/1
 QflrMGpQifrlGkf90LpHaoQXMn5FmLAEmEHmkPe3gl4r+j9JkrF4LEly0fNbXpBE+1L7
 T7iTLNeJCILwiHZ4Zmbgvh09zFOaIBJFUgPyQQIYaRxXw2rvIUXxUOCjtNbRGM5Iu6hQ
 1wWA==
X-Gm-Message-State: APjAAAX1R/9agtKKHXn7C7mkCXZSX4GzVh1kqREZf/iFPtbGzyby8lPY
 rR3jVvAGKNSxrR/Ld6kZsA6Bl44wvLgtE7ONck4gJnFt
X-Google-Smtp-Source: APXvYqypYveQen2gYQoWBAexU5HjDx1bCXKmIXRPwNhPouKgu7zUUU9EM1H37yXC4evFvUW/pjxmksMVIJVT6gqztP4=
X-Received: by 2002:a2e:9799:: with SMTP id y25mr3356838lji.38.1569597856012; 
 Fri, 27 Sep 2019 08:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190927110519.GA25228@imp.flyn.org>
In-Reply-To: <20190927110519.GA25228@imp.flyn.org>
From: Val Kulkov <val.kulkov@gmail.com>
Date: Fri, 27 Sep 2019 11:24:04 -0400
Message-ID: <CABFXWODfAwpQ-9tjOCuHUTc6A94PT=N-GhOHGB7RmAwqS53=dQ@mail.gmail.com>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_082419_637057_7B41EEB2 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:233 listed in]
 [list.dnswl.org] 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (val.kulkov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Wait on syslog-ng
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 27 Sep 2019 at 07:05, W. Michael Petullo <mike@flyn.org> wrote:
>
> Does the init system provide a more general way to solve this problem?
> The START=n statements seem to impose only the ordering of init script
> execution and have no bearing on whether the services the scripts run
> are ready. Do I have this right?
>
> I did see sleep in a few other scripts such as network.
>

ubus provides "wait_for" command that, as the name suggests, may be
useful in exactly the kind of situation you are describing here.
Unfortunately, it is not documented properly. The only description for
this command is: "wait for multiple objects to appear on ubus". See
[1].

I could not figure out how to use this command from a quick look at
the source code and postponed that research until I have some spare
time. If someone knows in which situations and how "ubus wait_for"
should be used, please comment. Thank you.

[1] https://openwrt.org/docs/techref/ubus

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
