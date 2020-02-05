Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DA915259C
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 05:36:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mhzZSK+htgQWCoFQn1OZWznT/f4uvaa6X6yyuvmOWW4=; b=aOpXr1p5iw9hEG
	Q2deY9aV8RgEh0EB4tk+TJtWwJzr+H1e7Vyzz2NAX29AGofsPSOQcUkJxnOqKg2tM/2s0glBq0RjP
	wlgHncQ4AO+eG2SkF5UAQ2WvXcNVt6WFAdzm0KFxJu4tJuEo2HI66JKSvTfKUdll2VVU15v12jRX4
	TxlUSsf90XB3sgbZ5Upa2oXSgMMGhrGb5EMrsuHO7MQ2fiC4lWx6E0Dm6T2hNPvL5cTp6IRPVrMgo
	WOcFQMgeYOWhCCuRl6SgZqB99S/Wjhovw5s/DONyuxaeo0I/QXR320O7OIH6vKrbAi86LHAOpANmN
	MLEG+l16bOuONdjsXOaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izCPt-0002Ow-0N; Wed, 05 Feb 2020 04:35:57 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izCPl-0002OE-Q4
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 04:35:51 +0000
Received: by mail-wm1-x32f.google.com with SMTP id a9so1024056wmj.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Feb 2020 20:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=S68LKLQGehtqOreHnfULY8ikdUbu0q1AdGUYecp2v/I=;
 b=TYO/Jf8XZD0YB/ONhM8DRocNckvh9f4jauKpt4zFyZc383kHlbLTGH0vXfjIYYli8x
 S+Oaf7hTFQIt0xL/T6gri51XWrKVWioac490jurrQ6VOCsicQph9WSQEP9vjajx1NOXn
 0NvLWH+XEATGmgjcu5DRE7rrM+V5zvs4AkJXxkQxktbiIpmLn5EpUwnAx46uqDHfbufF
 x155GfiAjrBa9FNWU8sojBSjkIJrQoZqaSGCiHZxVOHlaSQ5QH1ZSrShu06sY7iP1rzr
 t3hAxGqjJUaJx/n2nmpHJNk+Es+mTim1ArWfUbIjcP8XrQtZnJBJg4x+JU3P1yyohkJS
 QhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=S68LKLQGehtqOreHnfULY8ikdUbu0q1AdGUYecp2v/I=;
 b=HcTWBGulXNCqNfqsosWnBBIsRvwxG0sZMYa5QzWnFKCVGl7YFgEg8EtmFHXmkfP/TU
 PfqsOPyH6AkmCM2IVhAmf7sYSmM44mTnyi6P85llYiub4eJyWCD3AWu64hOfB/jp+4Gv
 KEjbgl7m4+JN7CcDG5g1sGvCDyOGbBQJkyFyqx8zv9zvq7dd7D8kSowuFhKZBYHJP4Xe
 qPGMKrRH+g45sNXIk9+NqVxeOW55H4M3kn8D0v76LxuTTXF1pzoP90u/38JMAsoIHCwB
 fhp+YnFIZtsBjy5xCwUl3SmFsaCMSfYTMtHHwylsrEOieJpmCu/wivVYCiaUjUlTrP/l
 e6Gg==
X-Gm-Message-State: APjAAAWQo6GSPvg0gDlecVWPtJPHZB0VD8jcwbN8esSp89lT8WvY2qRW
 6oeOEsda3BFYnW/5q77+4BYfPksW
X-Google-Smtp-Source: APXvYqxUUHgaAz2o9e7UOk81Hop2FDuuFUHlRmUoQ0aIlEC9N+ckPIz06aey1c28NlxombA9OsqrKQ==
X-Received: by 2002:a05:600c:2218:: with SMTP id
 z24mr2954625wml.50.1580877344395; 
 Tue, 04 Feb 2020 20:35:44 -0800 (PST)
Received: from gatosaldo (host246-252-dynamic.0-87-r.retail.telecomitalia.it.
 [87.0.252.246])
 by smtp.gmail.com with ESMTPSA id 124sm6941078wmc.29.2020.02.04.20.35.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 20:35:43 -0800 (PST)
Date: Wed, 5 Feb 2020 05:35:42 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.382.2002050532560.1717@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_203549_871006_60A335D4 
X-CRM114-Status: UNSURE (   4.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Protecting a vulnerable host behind an OpenWRt
 device
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello guys!

I am happily using an TP-LINK MR6400 to browse the Internet. It uses a "self-managed" LTE modem to connect, so there is a double nat:
- the one done by the OpenWRt device
- the other done by LTE module

the LTE module runs old software and probably won't get updated as frequently. I would need a way to let the OpenWRt device continue to talk to it, but stop anything from the outside doing so.
I did my attempt with the firewall and they seemed to work right. But wanted an opinion from you guys!

thank you very very much!

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
