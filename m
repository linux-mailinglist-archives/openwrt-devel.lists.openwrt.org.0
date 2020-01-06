Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C167131737
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 19:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EW5J53TPVabX7+MgEeEK9MGPxcqK/eaZpiS2YzeVLjg=; b=O50IMXyroVWcrd
	86StqrRjTeJFyNzEHdDIejWkNeUhhQE9tmFlgJubVZQcpgjRfX8Tax8ngboetUvEtBuE34OwFwPAR
	FPa9Q95J/cGeGpErme4wOUzzwLXnkuXdCFbC18NGZhnPBcijzGGk3X6f8/nPz8IV50FFvLOq3zJft
	TRF2sjKB4sBes4CWZxmQZWBvzwWiR8q3DP6CPacLIwSmyt/56KBJEURk/G5BQy4R44bKGNo/pFdCh
	RIb3N6+dfE1vH7+8Mx4/9hVg7n6j6Kp5DVfgCEBkgFMz11hQTJYArB4xRKdIrz4K2nKCxTVBpocLv
	0u82HYdJSCmMuoy8duMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWl5-0004PS-By; Mon, 06 Jan 2020 18:05:43 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWkv-0004Oh-49
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 18:05:34 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 19so60212677otz.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 10:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=WgSVEfPLQb+mM6oewxk5QuBwidRSrHSzmrqccDzwGKI=;
 b=QxzColSonL+0yrRZwV9kG9gnBjoGYXbCJi/+3h/cRVdS4bLrrfwxoPJ508rA8kbIQF
 wtOgV0fXinh/Qfc/G3lOKNNCiZySLHRSM5VjCbbn3utlrkqQP2ju56+Fx5o5wP4WWjCn
 sekblUbT5ygEIPMHlgjS+J2p97L2nH23wozRmPG9Sy+Le/pmYaBnjSG6sJjv4f/R/ahS
 mHI6khr3gGKc7kf6BoynZodwsg+O52tVnwIRo/f31TD6dCcywjvKOsZtXpkifVTcnwB7
 t1L7S+ggrufl5Yviqx8/c49uPGDMyYYia/xEBPYGuVAfuumQn6UDf+TgiEmVxZKugjY1
 kJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=WgSVEfPLQb+mM6oewxk5QuBwidRSrHSzmrqccDzwGKI=;
 b=VNpSB86XftegOKmsla1B591BfAfTSIb6joQY5Tl07JWQ+NjPiUgR0CQTHHYVeF0oy4
 NqpgDVZ76ds3I0jRVKzW7CTtqXN5XVPxUqLLoRYSAmW18QICG42p4eaNgCw34mu5auQo
 FU2vr0yVOeOKMDa9TlLedP46EXlm3gxLU0BjOFsbacTrMyYed8YwhorMTSS31LZ8b3DP
 OPSZyX20rbjsWucBhunijxxNMqASecPrkwVjb0pXhtcetX0QtjjbmEtyyTQKiXVahXZL
 rOzucA1KnZWtSUNOo7bc2LEmW/VZjQrA5e2lKKbq/on0jv/TLcY7HTAAhoMkzA0v/Jxm
 NBBw==
X-Gm-Message-State: APjAAAU4+rNeCndH7wRvrpw0MIoOtK4EjxzQHEG6KZUSEEFmEwgdMU9U
 WV8ULQJ/kVzUT3gsrZMI3SgNJaubjnjea1YN2Jg=
X-Google-Smtp-Source: APXvYqzjD1TQZuzj02tGjbLIfAhn5NhLbQIrjo6vq9wcl8duiGcWqndtyZW5Bd9+XM49U1PhWJkAtvdmisNXFqt3Csg=
X-Received: by 2002:a9d:7f16:: with SMTP id
 j22mr114148096otq.256.1578333931999; 
 Mon, 06 Jan 2020 10:05:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Mon, 6 Jan 2020 10:05:31 -0800 (PST)
In-Reply-To: <ea2a62b2-04bd-ccab-1658-049c30f2635b@gmail.com>
References: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
 <20200106162058.GA86978@meh.true.cz>
 <ea2a62b2-04bd-ccab-1658-049c30f2635b@gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Mon, 6 Jan 2020 19:05:31 +0100
Message-ID: <CAKR_QVLm1s+7kqnp9vqBjj7bOQ+5hpTHQSrrHZ7eYiBjrf9XyQ@mail.gmail.com>
To: e9hack <e9hack@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_100533_167081_1F6BB2DF 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 06/01/2020, e9hack <e9hack@gmail.com> wrote:
> After login in uhttpd/luci, the first page times
> out and forces new login.

A similar thing noticed yesterday: hitting login would just re-open
login page, another hit would login but there was no crashes..

ubus memleak found in r11086 seems to be fixed, at least according to
processes info as it doesn't cross 2% after several hours, however
something still wastes memory since after boot there was 90MB free and
few hours later 75MB. the router was idle during that time with
overview page opened and load 0.00. checking processes none of them
consume more than 2%

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
