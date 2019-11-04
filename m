Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B03EE2CF
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 15:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVLF43Xcv7dNbGOexjlNRWWZL9hOyxxfnTjK5XaxH6U=; b=O62clxv8kFaFiH
	FflWnTqfPpOpZoDtlHY4Ehb/pRzyUP2b7hQYPgPVJAC2miYrMU+gbj9Y8LaK6ljZAb1z9E9+13El9
	j98jVDnQIp0wO7mGKwqm+q66NRcoLiGWazb//0COvEpvnoToCyFSFGH8KgnyX08RdOh19ubHCyNyY
	0dNsO2TE0WBfj0j5fwpDy/yEdW0Hi+UMpCqW8fYh24KVMJ8iRfG5/HfIgTGe7dgP7Id/VPR7156jo
	pf9zAMcmdXFJEsoTy/+qeung/aoJX0p+7H61MneFYaGyZjh2oeWs/6LVRHXc1CeWVrORSlW2hQwcW
	5jISOv0bcGf1BPzP27CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRddn-00084w-4g; Mon, 04 Nov 2019 14:47:35 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRddg-00084U-31
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 14:47:29 +0000
Received: by mail-il1-x142.google.com with SMTP id d83so15039726ilk.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 06:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tUdq6yIrp7ZV3wKSLje0I8NgBsOo5UUM8fnq/6LuyGw=;
 b=P37SJKmGNYWgaAdz6+mwwYNHCqgrKSV9+orXXA97e7rH+59O33R1Vt4msC+F4VQHT8
 OcW7WNYizBxUu7WcXSI6atchLjgwuYcLReidGLbnfR3ss3Mr8q4RX4xpPzrbA1Siv3e1
 zSniSx6JQSdSQ817a5r47agjXbbGBoL8oPSx9nrmgpgEn3vMoAmxsgWHJSzw/4BBB69K
 EJ3qzdth1p2wEaPevCI+V3tE+evp0GjSXyQqSXElSr3qNOss3/tb6i+KRGc4R3eW73Q3
 RzAykg1F4vZylWyQAar9476F+7hRvQBGe9bXKyfYNafGJahRi1YBn9Uyjwg9aXz/oo/W
 oU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tUdq6yIrp7ZV3wKSLje0I8NgBsOo5UUM8fnq/6LuyGw=;
 b=LUcvqVAxBkTROspkef+I5Pw2aYdRrAb92RlCYbjsuFfzRZh+RepIen3JQnTwCaMQ7H
 bG/VAEINqIDGMT5TBlZCuQ9WkTUHVPmZfvB8s3hrgbtWQlWo8LU8QnsYMtriW1DjWr7p
 ZvNT0cyHJYNyO7p+ucwmuIm/rRPuz7WGUQ79W57NqJ+ODmNlInfL6elgb0n9ItM349DY
 TqaV0WfP/0A+kiUmmzt15CF1pd3XCt6qI4cnWFF05hVZXIA6N4tGsyylp3FhpIgiSJ/a
 t7EJ+b7BYF6UbXXKhtlJXPzzx56V2QszlEU8GqONMMwYQA2XrgCJ0khs2M2jqnY6GKvn
 p7Rw==
X-Gm-Message-State: APjAAAUewM2WV9VQbFEcWKaBr0KALCbGeXGoNAFLNlm5ifenXY1lwIKu
 GiHTLv54ZOoogsZ/tZiBI3SQXhPupywRs8+tKWE=
X-Google-Smtp-Source: APXvYqwQtUvcH8Zplu3WKfM1Whuq6ZjTWZaxJt0O+ejrtAw14lJfV4ciZJuchyHvtlyFPk78pJmWoOEX27cwbjLW91E=
X-Received: by 2002:a92:dd0f:: with SMTP id n15mr18392351ilm.146.1572878845994; 
 Mon, 04 Nov 2019 06:47:25 -0800 (PST)
MIME-Version: 1.0
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
 <20191102141855.22192-3-kristian.evensen@gmail.com>
 <003c01d5923a$fc6d07e0$f54717a0$@adrianschmutzler.de>
 <CAKfDRXiQNTFAEcyBFi9zon1OOCZ_do1ABep4dPRBepkXjB2pXA@mail.gmail.com>
 <012e01d59250$f9b20490$ed160db0$@adrianschmutzler.de>
In-Reply-To: <012e01d59250$f9b20490$ed160db0$@adrianschmutzler.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Mon, 4 Nov 2019 15:47:14 +0100
Message-ID: <CAKfDRXjqt6Az=EDQYQuL0F6fXDFrqACC_7R50uk-q6-uHNbO_Q@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_064728_130515_5E977521 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
 WE1026-H
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

On Sun, Nov 3, 2019 at 3:14 PM <mail@adrianschmutzler.de> wrote:
> Okay, if it's not visible I do not think it's worth to deviate from normal procedure here.
>
> I've remove the power_led label and aliases.
>
> Feel free to test and provide an updated solution for the use as USB LED.
>
> Despite, note that the first word after "ramips:" should be lower-case in commit title for future submissions.

Thanks a lot for you help and feedback. When I have some time, I will
take look and see if I can come up with a solution for USB LED.

Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
