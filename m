Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F437EE1B6
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 14:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mq9tcm4K23L/gbFQqwFnztv6vYCHDO0GelUeKQdihRs=; b=Dlipcwxbe87gYH
	PTjwuBzOIOnKwp9kZ74g4ovlQ3q5ESZ1dFotyS9DJGqyr1VwlWqa1AVZ9vhmYRWq+MKifRE5U8OSl
	0IZUtgu/EfTHQkkKXWPlsG/6kJv/tTc8DzfwcknnA9lFs4jaLSYbIqBLd2TAa8ok21yNLmLiq8J1J
	t59bK57H/lo3NxQ5etuHTVj7KOgXVuNbohhWFY8VNDc+y5D/S+teUK202XWzG6d3k9xk/T3Qj0m/2
	UQK5jHOGjLUYIqCINdN9W7YMYFDqOLrcu6jB3o7dofuisvY95bhq/epxdLnKDJtj+PHGCnLDxOCNB
	wUwTA+lIfp2C2eorPx2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcrD-0004EL-GI; Mon, 04 Nov 2019 13:57:23 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcr4-0004Dt-Vy
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 13:57:16 +0000
Received: by mail-il1-x144.google.com with SMTP id z12so2884911ilp.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 05:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2NXRkTfMEqYOz0n6HMrmhhosQir1j6CToThEli/jg0c=;
 b=CL1/5xd9g4dUkRiW7D9EgM/Y7vd7wTjlZfbb8QeBzuZEKCu/QY3t0YfxgdpF59IaDu
 OFuNKTROpSC2/NYrPAuB1Z7LGjIyQSjwYo4pxiTx9vERffOnMuI3FmdTfsMm8Qk1YjQn
 aFBnhoaUkKLAYrdSjoHKbd90e1Opw2gNoLYB1w5+dfS64bm/gbEZf6jwEdky0smkq9+a
 DJWj2UuI44RPmSSNwgaE/KIs2IlHQNrAj2FdljxGZseB6gRGoOJxqOnG3tHl5MwIqqAM
 +cBLbKYkE4yl8NOdSgLrxuYAVgdeaVh/IvNVdYcEob0q+qB5+R0AYMT+kJXn5BPWX/0e
 cEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2NXRkTfMEqYOz0n6HMrmhhosQir1j6CToThEli/jg0c=;
 b=Ird3QAPQalINXe3cCC624fFPdAl+qrrktwL+P/2R/sd8+ZoaPijCFIQRbrLwJ4YH3n
 lul4sY/S0tvFsXgheIEg5zcVTCrheoMThqPJU0KbLfUnEusqX/X3QlpHbNq94BC2A7Zl
 /GeOSPaQggaIZvNCtb/wCBX40Gva+f+SLo8Ppq0qmGpxvbIkqwKAl9aXBJnhZu1DGEb6
 QwK6JAztpzBJ9mJixY2VfKn8oQLEH8MzmKslpn3xq2RgN1PR80cmzRJqpPwM+fjKQTKz
 lTSlhlrmAnWc6RaJmPj23h7s+pkhescrxpF2T7BL8WjcDL0sSJgxv4+iD72a4GYcD9Aj
 GdNA==
X-Gm-Message-State: APjAAAW7duufyMFIQwFoioKnI+gGq5AlzYmfs/ynCkt5Xuvynef8VLdU
 XyUKVANRzJPnWhmWWifElXkrH9cZqymEMspQbSA9rw==
X-Google-Smtp-Source: APXvYqz1ZxogrCCTTGY4yjeRyv5pcmC3zGKCbnI+cLpxy6IBOtTnw5yRq0LUiwNuonZJHV5GQ81pBPg5CW1fj41LJ+k=
X-Received: by 2002:a92:aa48:: with SMTP id j69mr28509461ili.162.1572875833247; 
 Mon, 04 Nov 2019 05:57:13 -0800 (PST)
MIME-Version: 1.0
References: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Mon, 4 Nov 2019 14:57:02 +0100
Message-ID: <CAKfDRXiaLznBL2xovCvtX_iV2c4qhdJr8gU5rpEs4j=bdFBerw@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_055715_049571_6AEBE92B 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: always store label
 MAC address in uci system config
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

Hi Adrian,

On Mon, Nov 4, 2019 at 11:44 AM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> If set, label MAC address is available from one of two sources,
> device tree or board.json. So far, the function get_mac_label
> was meant for retrieving the address, while an option in uci
> system config was specified only for case 2 (board.json).
>
> Since this has been perceived as counter-intuitive, this patch
> changes front-end access to the label MAC address:
> During first-boot, the label MAC address will be written to uci
> system config file for both cases, no matter whether is was
> specified in DT or in board.json (via 02_network). A user of
> the label MAC address will then read the value from
> system.@system[0].label_macaddr, which is easier and more intuitive
> than using a function and still have an uci value set.
>
> Since this is only changing the access to the label MAC address, it
> won't interfere with the addresses stored in the code base so far.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

I am not an authority on anything, but I don't think a "runtime" value
like the label mac should be stored in a persistent configuration
file. For example, if someone makes a mistake with the label MAC, you
would need a uci-default script for fixing up the config. You also
have the issue of devices that have already been installed, without a
uci-defaults script they will not have a label mac in UCI.

Instead, I would keep board.json as the source for label MAC and have
get_mac_label parse the JSON-file. I guess you might also have to
patch the generation of board.json to include the device tree. At
least I think that board.json is as easy to work with as uci from
scripts, Luci, etc.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
