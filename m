Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D9B1A0585
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 06:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5npgkux0uceauNTF/fTizFz1GChp4B49avMksEFWyY=; b=MinS9ul2evr0iV
	937yc9x6P35gB2yx8pKg7LfDXL1etxqdArqfKciSNR/8iBQJ1bqns2TKasSoV2nlk4S9DmUwZEAxe
	l/47bWM1NBCezi/7monbf0uSpwZa/MNmwUY/L4BDmk2Sex2l8RVNfG2MvFnelpYE7WYbPfaqFfnAS
	eKJoNKfW1IgfRtMzK6k6OOrzYiRoIDu3738NmTHj7ckfDp14A1cH0jJerdls7l9m+MzL0jF4h/7V6
	xCdRZMhpJcVI+9L6cBU4h4VrQTD1kVWSmWbpOpr0l4NRtSkANwEk8mfOYfpCoYNetChI7HJ98NKa7
	/nro6OOW8K5h/sTXjFIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLfd6-0008Kr-1F; Tue, 07 Apr 2020 04:14:28 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLfcz-0008KL-OA
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 04:14:22 +0000
Received: by mail-wr1-x433.google.com with SMTP id w10so2244607wrm.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 21:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=hLbVyccjIIaAuLxHbixPvQjO+l/ZFft/im4Pgbnsc7Y=;
 b=H9XfcoLXtU6jwxDCrRjcI4ec3HgoRoCikGthTNGOfptpiDPY9w1kb+8TnyxYNZSAzI
 wfeVbPC0q2eMFheLEOGvMlFQcJNn+2QJdO+1G5/XO2UdiSkOfrpOHNLTxsKFC0+rTyBw
 mG3iKImOxHeCO/e/OgXR5KUOmtUSA8oNPMxRg6Qv+xnVwviaPn7TUb4Rp/Cef172pV72
 q+U0yIzom5ZT4EQwbTyEL79C/jJTSbpS6NcpQ0HncMn6XyUYjSuWgEahi/2h4eqtAU0q
 s48Ar2Ac4oEbGc6G5UibkuCv3FCqMO3PklyNjnfvLAJyzAjWyIfAkkTRrrI1W4DV9rrI
 PB9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=hLbVyccjIIaAuLxHbixPvQjO+l/ZFft/im4Pgbnsc7Y=;
 b=j60zSgJxHSyP7UNODfGNXp1GAKZizFAhSwQpoDiLOHP9etnAhKSWlOWTsX9zAbvSwT
 WTpwFxwjSQKiArRUUPbD1PAldd4HxdO/M97O6Wc39OIDAKumENp7dKnozVeRKb8ueM8i
 d94HoMOskLMGl7+6CpTQv7jRbPt92q3UKFs8pWeM9TH8y4e1LLIGCtLRgrARCquKoczf
 mRf2DX5uB2qLp4ky1Z9Wcso7h/JBQdePazEy7IcTkGjLWCQIemzAc0f6hrxP0IvB6FpC
 ulnLGjqYNJLJXOQaxCdGWMckH1l8qLyZAFAs2D7Fo0ujMTQbQ4lfyim62hKHc9bIO03t
 4img==
X-Gm-Message-State: AGi0PuY9k9XOl1YZFujLE8DJS5vaD68WrLdp8bCo8v881oE0QOBY5RbQ
 +uz7uCJeGZMziLXsxs8khRg=
X-Google-Smtp-Source: APiQypKEWbadVp+995GG/KpWm+sOCqSs4SGyjPR0hNJo+A4jeq/5aOIG607LJID7Epm/IEgSmOvBAg==
X-Received: by 2002:a5d:4d8c:: with SMTP id b12mr373760wru.35.1586232857402;
 Mon, 06 Apr 2020 21:14:17 -0700 (PDT)
Received: from eeeinsomma (host118-250-dynamic.0-87-r.retail.telecomitalia.it.
 [87.0.250.118])
 by smtp.gmail.com with ESMTPSA id h2sm606892wmb.16.2020.04.06.21.14.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 21:14:16 -0700 (PDT)
Date: Tue, 7 Apr 2020 06:14:15 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Martin Heck <princegerman@googlemail.com>, openwrt-devel@lists.openwrt.org
In-Reply-To: <CANVREGi6S8z6UN6cYPSgQG5Z0U4OZhoUagW8qS151K9Z28grVg@mail.gmail.com>
Message-ID: <alpine.LNX.2.22.413.2004070612210.9935@localhost.localdomain>
References: <CANVREGi6S8z6UN6cYPSgQG5Z0U4OZhoUagW8qS151K9Z28grVg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_211421_808973_291FA376 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Openwrt TpLink Archer D2
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

Hello Martin,

The final halt happens because the DTS file specifies a VR9 platform, while your device is part of AR10 family.
I would like to help, but for the moment being you can see I am struggling to get ethernet working, I am not much farther. :)
Any help would be apreciated.

enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
