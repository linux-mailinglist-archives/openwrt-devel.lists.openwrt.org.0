Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E04BC78A
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 14:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQ3iHLVWZrEVj+koSN1Cw5gmxvkbbdguNebEFhiKfm4=; b=WtgcLofBQORi+a
	Xov/qIkjjCfZcJOQmHaKfItRWvHinycSgt+NmKFLO95/ElkxA/2I/5FG6i661XnPOZxx16b7/1ZmL
	6mWZebi8UZUQhhK4qJ43yBG7wjochHzJ+8zuMg0WMT26mcCd/dOqiRSDfzSpGsUdmLHUAhhfgNhhJ
	R0fo4lijJYZ9JJtnAW/2oN1GfdEwC9X2lB1RPTuuk4wfmLsas5OmP2HKxldlDyi3HGeyitDelMpAs
	eTpEdUJB69UExhQluL40QMNMEERenbxBi+B5awQqAWCTP5I0S+ykVXq9gAumJFRRj2NswlEf8JM0m
	6he5M8vPQQIOcqgKVSKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjaz-0007Es-4N; Tue, 24 Sep 2019 12:07:05 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjao-0007Ea-JB
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 12:06:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id r26so3738523ioh.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 05:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=siMpbX1otEhFZyUn5lULSKW4JVoB2wks3EjCiz1mmCM=;
 b=eRG6IuiorEltIl6fizWOJWUtPVSxFV3Vcr/Dpmvcy3XIifgSNzdQwMqRkG6fe9FHV4
 gb4+L3+/9s2JWkiiP9I1MJG1z3f/ObTWP3IHpMWHeq6lFI79cckHv5tKQTPLmxOa249V
 1XtUQZruYO3uyv3152Vv2eg/F7Tw/zdHlH98P2YI1CWnzFryI3nQ7CGzfP+9PAqe1TJ4
 g1kyp1On030ypPRqOxqyEFXU/zotkbTxFZsdF+t6Y3hoR8oJ5U+HtwfSuUCLVFt+L9QR
 8Z8etsqnucJXZecYGFkYoINd8q/t3OyGt3/DFhM+EQ+9Maw/iFMMSvBGHcFCNq/ynYHJ
 5Jbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=siMpbX1otEhFZyUn5lULSKW4JVoB2wks3EjCiz1mmCM=;
 b=Bj/+UWzXh4koDd8swWVgrPCwzKEzCMOIra3VOh5xfDg3vFJYoHwR2ByaUuSn4V+NBR
 jZtknet+3fGIqKUHbRTQteouSHJAe61miT6wlb4Th4tdY49uqds4vRtCS35cdUYkH5JA
 Qh8SfnYJxwqtT7YGqPWrqCcFVS5sW2oRTYIyBZZtLEfV4Vpb0NZs6fpl3+0xoUg3+ju7
 4mBAjXlzDyv2xXIzl4gdm4jMc3MkcaRjIcsmXvSvHQ3TmtJcbCDD1JsV1WrvHPP9tKS4
 xPn0CnAwVEegYwqpfRt3Og+4ZDf4AnJc7v6ziLCJA2d+o0r2PysFB88091Wta/hBKzlY
 ETYw==
X-Gm-Message-State: APjAAAX4JkOtsfUwiZ46wfy3wg4QjmZyeadxs5PDI+U0D37Y66UPDr6T
 KXvDB3gefT9Rf0D1tNKQio3QlSMO9EXd9XnH8zw=
X-Google-Smtp-Source: APXvYqzTq+5+0eoW+mm7uWDFX+iakbfhgBuproi2TKUt/LG9OvULJRAkjkbyZy7OWspEZhYABSwgZs4C3vU2kP3BiT4=
X-Received: by 2002:a6b:b88a:: with SMTP id i132mr633107iof.215.1569326813556; 
 Tue, 24 Sep 2019 05:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190923133417.2546-1-freifunk@adrianschmutzler.de>
 <d900b15f-63d0-efd3-f6fb-d97f056fde90@david-bauer.net>
In-Reply-To: <d900b15f-63d0-efd3-f6fb-d97f056fde90@david-bauer.net>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 24 Sep 2019 15:06:42 +0300
Message-ID: <CANoib0GLi3t_sWzhPYTkhELREuhkAF=cBg7DQvvhn+jg9GSb0Q@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_050654_634312_FE7476DD 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: remove redundant
 ucidef_set_interfaces_* in 02_network
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,
> On the other hand there's ipqess and qca8k on the horizon to end the ar40xx mess.
> But i don't think this is a showstopper for this.

That stopped me from doing this fast. ipqess will solve it anyway.
Maybe it is not worth the effort now. I don't see a straightforward
simple solution for now.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
