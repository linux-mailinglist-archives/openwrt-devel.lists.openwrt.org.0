Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10707A879
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 14:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNbvfJ9stOnPgoPPBfUVYAILD1kro3fHvXjSANCdelo=; b=mLeiYmDzVVUnb0
	ZOYaMw/l2Tmlu8r1FjxmUS5gIszk7xyeySxtem3Rgwzp1cLOKyxUotUYux/UtrRkJ8TPrCdThGLkP
	JOdTTnjgta8etAajlU4f3Dc2YybSDbtqfTk4HSZILLYCguQkftTfPVUsezvk9tp40YRk8IAXMhQD1
	VMobDrgrGDM+fhqvIOQ61PmEDnsvehnKctzoZ2YkcOHdRsR9eRmmpYmxlaQsURRSIWbhg3xAVRlCn
	SwQK31sFK2C8OOI1pHm1SigNe8sWsP0fYG8RLlTkBJp3xHXoCFPofDLiU7L0bQT8AqrJLminb//LJ
	dOQoJmT8nxFJQpBPzWIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRGI-0004bV-2Z; Tue, 30 Jul 2019 12:29:50 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRG9-0004b6-2Q
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 12:29:42 +0000
Received: by mail-io1-xd34.google.com with SMTP id s7so127435834iob.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 30 Jul 2019 05:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wFW9iLBv2koLcuVJUZ1Gpu57CoQkCY47eZUn4mkHIU8=;
 b=NVoXmm7LhqZJp5MI3RIyc/wy2zwbAdCtP39kn36DeSEcT9ZnJ7Dhv1uqvz0zX9/vfH
 PehMb4/Qs0JnGhv3+sr3cav1uAQ5SCa4ZiZPfJWkkOKe/x3TwciN9DLkNafyviyPKA4G
 ZaGj5TD9mMIq7P1lFlOmjasjAuJ35BYEVasCtIHpDl1aajdn4p0c0880ZrKsd34Gtdvj
 +qqImpERGlNpnc64asmQTSAabFx0+jCHEH4NNh0h4iPNx3/icz4FyXmwOXuXNc5s1vAP
 rjRzsO8QgOugPDG20XmLe7IeZJnq3cw3Qikh4pJgZtLEO06AjMSDtvejpkDrx7EfZJLw
 eTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wFW9iLBv2koLcuVJUZ1Gpu57CoQkCY47eZUn4mkHIU8=;
 b=RWYdxygyGhwfN4aV1NlkYQ7ZAFQ9g4nG1WQH8sOsqZ2snQ4ezitPlu3sJ2cS7Dijit
 UJmiUzdg4ccucFcJnkfB1cTgKxAvU9ts9V1pMHzunE4uq2Z3c9WsEOuylNCftSpHBL/N
 t4Q3pjzgPRP7Qf7h58MoW+dNkbB5GMH7RvAvhsjJ1dLph3X3LxpXtQz1PCRfrqcm9GsS
 SnAWbtAWGGmwOq6lmqSJ5tibx64ookE27dCx7sZF6ca7TlYeFx4x3XmkB1rx5srvnniY
 eiWT0EwE3J9tlOiNRTFweRYfs9hQWTd2ea13jyqjTe08WdryctodUr6UWXFt56JY+Kh7
 KYmg==
X-Gm-Message-State: APjAAAWIbywy4geVPrQRur/y9tCzw6EqKhoOUdqzFUA/6KzXtgjT5O62
 HalghPpEopNrfT9j+kr0i1spydrbfGevy0ObwMJ6gxNP
X-Google-Smtp-Source: APXvYqzpysrdZf21JOLA8j2IaEiQiOvdkJluQsXKNpnCrlKHU/ix/YYV5CkYjM24ynJDWNr0Eo5vEw3FfvzJ15b1ChQ=
X-Received: by 2002:a5d:924e:: with SMTP id e14mr97123543iol.215.1564489778727; 
 Tue, 30 Jul 2019 05:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
In-Reply-To: <20190730093705.GF74752@meh.true.cz>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 30 Jul 2019 15:29:27 +0300
Message-ID: <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052941_113595_8614C10F 
X-CRM114-Status: UNSURE (   4.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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

> e) if you want to use ath79, you should use snapshot images (and expect support) or
>    build 19.07 for ath79 yourself (but don't expect much support)

Are you taking in account that many devices added during the last year
as ath79 won't be supported by a stable release.
Master is no good now for normal use. That will mean that for the next
year or so many users will require custom 19.07 builds.
That doesn't sound very good.

Initially ath79 was expected in 19.07, but it appeared that not all
devices have been ported from ar71xx. So we are not ready to drop
ar71xx, but we are ready to support ath79.
Are you serious that space is an issue?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
