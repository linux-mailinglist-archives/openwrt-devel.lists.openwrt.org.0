Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B704F748B
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 14:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uM7PpNkVijD+pOq5K16YlOnL117Gyy/0/gK3yB+XWpY=; b=SaTwD8CSy5kgzy
	zTElMJvwuhuMRaV2MeB/3bxOXGvRjgKGg3nI93ZAE76QFQHQfJHdRBSTkFbiMkWOygo0Wyi4mguIi
	V8n6Dx/y1y4qN1Liw3+cctytWQflWK9sPH9qi4CpYq424aC+UbhtoXCE7TtXfVCrWa8LpNYYwWpzI
	TLsbteJxcVWwWF4w3EG4D/VW2czV4VX8PORbDHielQLPITOUj5oTlyP3dm+sLzKE6fpWl3pwZRHSW
	EZ6WZlHyz9WM2hFMy+xzQmNzGucW+VDqZWeSPpk/cX7rbEieL1gnPY+EQNHcVaKBUo/6w3oT2P/8J
	SV4XiaKfL8AUMWSNPYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9RI-0008IO-9q; Mon, 11 Nov 2019 13:09:04 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9RA-0008HX-8S
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 13:08:57 +0000
Received: by mail-lj1-x244.google.com with SMTP id n5so13712837ljc.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 05:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qasTaKouGcPIcBzWCe6XxddsvgNU4EMMN0bVCzhYsLI=;
 b=exkVafbbYhPzt9Tfq659vY+WwJTIq1M4uJBK1/cbtI4pVlEvXRa42GfsKHIjRJk6k+
 2vWgIy3nbzrpaALYUb5qwo5XX1jyo2RmVHNCK1i+LG9vNq7YndsK2bY06hjplQ5eV3KI
 VNWNRPZQ5ltL4m9u35aHuh5U2xaz/MPaLsUyDEg85Vu4BbPx9XJrdk438DQUCMMnpQJL
 CCD90DGMTv1UlR+cnYJcdi+NB5C57uhjpD5LXVQ6+ZIkISHjcLiY/0RAIaPXzzzHMSBK
 PU+OzFESyJhd9aKSeLzvSYwcRgJntyYzeeZS1iH+AcqDKyAnvSV5QvQzlqDR1aRMETeR
 PaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qasTaKouGcPIcBzWCe6XxddsvgNU4EMMN0bVCzhYsLI=;
 b=cYLaYjip7A36jQJjZlq7mcVih6GujN+ZhcTUW3t6sQyFtQjDVN/bqDa80mB8qaylsQ
 FrKD0gRCWkBkgaj6VK2uT4hEjMSjQlxGAPXO2FJQQTMVN3cSKI9hmFyUxAl4fnPjGmCN
 DKazQ/wRac4IGIdw4bl0IpOCzCukd3LYUBhoPeRMf/kbyaz/K8+NhIaIvNis8eoeR9Ph
 h+ikjPiDxdvXi5BWhlYRuSqRKzF/YyxtlDjjigjpiGFISOUIXZ0KuYFBc5a945tzEySB
 7GuptzQGoYDBerUbdqf6Y5vyEVujKiHG481TaHJWFlskNX+9h14yuuGik2O82szmFzEz
 Agvg==
X-Gm-Message-State: APjAAAXnU4C7fZ5z/fdvcVV8ApY+0p1OljvBTYNHkgOiRkU7oXF0gdrk
 hyDr2LxjzxbeKl4gGyv0Ni0=
X-Google-Smtp-Source: APXvYqwIaJraP1neelQ0cQFBn+Yx8hGxBpPkizrHtcHXlP0HPWDDd6l4UDunAPUInuW6+FGNvvw78Q==
X-Received: by 2002:a2e:8151:: with SMTP id t17mr16085529ljg.95.1573477731548; 
 Mon, 11 Nov 2019 05:08:51 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id m18sm1316341ljg.3.2019.11.11.05.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 05:08:51 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xABD8nFl032033; Mon, 11 Nov 2019 16:08:49 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xABD8n1N032032;
 Mon, 11 Nov 2019 16:08:49 +0300
Date: Mon, 11 Nov 2019 16:08:48 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191111130848.GA1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <010d01d59880$f2d30850$d87918f0$@adrianschmutzler.de>
 <20191111121412.GV1190@home.paul.comp>
 <020301d5988e$f92ea7a0$eb8bf6e0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <020301d5988e$f92ea7a0$eb8bf6e0$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_050856_301237_0D4D1C71 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: openwrt-devel@lists.openwrt.org, tmo26@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Nov 11, 2019 at 01:53:10PM +0100, Adrian Schmutzler wrote:
> > I've made specific effort to flash vendor firmware and confirmed by
> > testing on hardware that the vendor firmware doesn't need those
> > partitions. Isn't that enough? What important aspects did I not check?
> 
> I haven't been able to extract that precise information from your
> previous comments (I don't want to blame you for that, maybe I just
> overlooked it ...).
> 
> If stock firmware works without those partitions, removing them is
> fine for me. Please explicitly state in your commit message (after
> telling about the removal) that you tested successfully on vendor
> firmware. :-)

Funny thing but it's exactly the commit message for my v2 where I
tried to express it. For the next version I'll try to make it more
clear. The vendor firmware was split out of a full flash dump I found
on the net (I copied the whole original "firmware" partition with "mtd
write").

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
