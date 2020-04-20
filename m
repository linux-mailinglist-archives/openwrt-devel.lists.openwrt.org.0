Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBFB1B0573
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 11:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LRvaI/iSY1xDNtL3o21yVMyjGlZ4xDmrH+YCMdsBm0=; b=h+DbToRoYCDZbl
	Wn8k0puwDn0E1IibWmT5aKgmwz1tifOhcbWCsXgOFt/EmoaQLYNUnZMtjL7vw/W7HtYZtAMUtQ/4G
	WUkuBDVUD4xevO2S8y0LSS0cdeF4cFrMfXvsiQKgZGl6UfjqAnd5IVAFoU3oHsHLfqKu4YnqP92GA
	6df/x1pUXW3WZcyOQIKaHaPCUMCe9mKqM4HD2HFHTqCGRLTTp4kvvP0dd1iULqFzwA3GTTUn4Skmn
	bevQxU+Ni43JQNlyg31Dt/WU0m2a947Qf2SDzbClADu6cIpEC3Rw5lwHHd93XA/5YFY6Krzwj0b19
	9ZAHUaIKC6k6jXRPMBzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSaT-0004vY-7z; Mon, 20 Apr 2020 09:19:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSaM-0004v6-5N
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 09:19:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id k28so7298425lfe.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 02:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AQFehYB7LElobw8OuVdGjRQXDGXv7W7vM+ssSsSSKYY=;
 b=APREFOJCFvsSlUPaUWEHcj/hQD49hBuBqnyyifttZdwqFe3jf9tcOp9fKfapAfOyDr
 QnEUoh3UqEGAzEUJB65lGdbdh06v9/FsIb3EuV6JIYtZ+J9OfBE1+G0JvZl7gTo1TSj8
 O9RB38j8wMYtiKxiflQnMJC6zeDVLDhKPNI4pgJL/6AdOfaDxs7lLAqIw+aZK6hlSgJQ
 Z4vIVPtckS3xSEeTmWvtdkmI0AsHfZ0v+3+4BjubKa8AlNmvIpKfv1kpz7fptNH5zASd
 l5NOG7jfXQ4xrW3eFkB1OFJ7UPatP+cC29GEbGLx3uGhDzQtG9p9c7IOro9s9bUC4eCr
 sK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AQFehYB7LElobw8OuVdGjRQXDGXv7W7vM+ssSsSSKYY=;
 b=FJqry4PUV+kVs8optG2VK4GX5S0JbtSjIDWbrS7kWzRgRah39W/IjY9ojOTed4Wocg
 xDjEoWwaue07eljBOS+QRyZ21ED9dXINPrsZXfxm9i+oEoRAZVDCer4hkYU5rrLmy7o3
 xMQLDYQwEXmsOjNOhBon2d9PCraeSufxkaT0xxN3HtsRzCT4OPEB9vkQ6Eh5hLql7jPd
 p4BIpeXlUfw063y+gw27wtVfKRAlq/2ANa2FJl0RgYKVm7Nv4dwz1QRnvcXJEWh65euw
 u2hs79XkUtjXrSw8gr3vEMavzKPxN8YnwGsSjrm8FIEC+0s6jS9FfjwXUcg55rSd+JGC
 GYJg==
X-Gm-Message-State: AGi0PubCx/VdfYC0lgY0NQTsEx0cLVFn94GuKD4U4rRg6chpVqzVvudS
 CX946jhf540DvjY++I9KXzQ=
X-Google-Smtp-Source: APiQypLKmVEvNbp6s2Pg5COPehi7TqILeWyvYbhwJ88P9nMmZHTFccwXu5B+bxTo8Fk9OdmvTJcwEA==
X-Received: by 2002:a19:c750:: with SMTP id x77mr10158062lff.1.1587374363003; 
 Mon, 20 Apr 2020 02:19:23 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id l19sm559540ljb.9.2020.04.20.02.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 02:19:22 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 03K9JJ9n016944; Mon, 20 Apr 2020 12:19:20 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 03K9JJJI016943;
 Mon, 20 Apr 2020 12:19:19 +0300
Date: Mon, 20 Apr 2020 12:19:19 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Szabolcs Hubai <szab.hu@gmail.com>
Message-ID: <20200420091918.GS23797@home.paul.comp>
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
 <ZMS29Q.4V5BN6QIEH3P@volatilesystems.org>
 <CAOZt9c-J158um4rvwLhPXio8fa3t16AQJj=8mfEVhC64CSqZ4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOZt9c-J158um4rvwLhPXio8fa3t16AQJj=8mfEVhC64CSqZ4Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_021926_226493_CD41246A 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Booting boards with UART attached (was: Re: [PATCH]
 ramips: mt7621: use lzma-loader for D-Link DIR-860L B1)
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
 Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Mon, Apr 20, 2020 at 11:01:46AM +0200, Szabolcs Hubai wrote:
> I have a CP2102 USB to TTL module, and used with "minicom -D /dev/ttyUSB0".
> 
> 
> Intereestingly, when I connected with serial to the router it was
> sometime unstable:
> * refuse to start
> * freeze at boot soon after: "Error applying setting, reverse things
> back" messge

I can't tell if it's exactly the problem there but when working with
UARTs it's good to keep in mind that Tx idles high and so when you
disconnect power from your target you'll have your UART module feeding
some current to the SoC's Rx from the module's Tx and that often
confuses the hardware. Proper way to fix this would be to feed USB
UART module's output buffers from target's Vcc (that's why most UART
headers have that pin); the next best option would be to not have
target's Rx connected at all (and hotplugging it just before you
actually need it); yet another possible way might be to add a 1k (or
more) resistor in series to limit this current.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
