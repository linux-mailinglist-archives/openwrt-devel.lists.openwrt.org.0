Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2949FF418A
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 08:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jozD00Vg8LJ9CbtzR9/gJXCL1B40eePuivGuVd5Stw8=; b=t0vqAt+bKKqBBU
	nFUmM1hqGxY2+UZIjQy00dsyKgnEoN/FVHZawOQWiiVmvBGrlmvYxw7eezJ8x8t/HY2z1wIFB5woL
	hUtGkxyjNRhma+lFK0Q1jJVok34C20acxKhEAIdvS5yKZ6OWcF+s+C0LRlTT4izaZMywMkTEIuw2w
	jAMMRBUR+0olJXTf/ZGEblgygIN55hkdfFnHGBg6Z2ot6kKZ6qegCPajX/pMc7UZX+Q73d6yJtnR7
	QBGqal4dcirt2kwV6vAWW5TRTwiJAniUXABnmCPru60Jfw//DU8gz7FZJch+TkW6F2B9g8O/rlPAP
	L/BoFfIcsOKeT29P7ehQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSz2k-0008Gi-VQ; Fri, 08 Nov 2019 07:50:54 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSz2c-0008G2-Tx
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 07:50:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id 139so5169164ljf.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 07 Nov 2019 23:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZooCTVRdtYjbzGxzcUJXKn07DdvoN+Xpzf1B+wbF90c=;
 b=RtkfAWmkEdRSqczRxxAxX1NiVlbeJruA5nIFyKmxALKjvJ4veNPUU/WaVCe+lFnNh0
 4OHpDtM50nH8v/Wy6QSzrVA8kTPalUHhyTAOot3RwZQMO4DVTAkeoPzTTW17/ht2i0La
 yNozbqR6WmPRMm+H0wAPhig13TFai3uQ4dw5/f1ZQi5qqdtU5FzzNdBp34meSVAIzqBN
 C+pc4tBjOrNEA1k0bjMwzSW9ij14AgywrzXZkL91zcUMctneDBqP52i3Hqg4yr3e94gs
 szmRmFX1ixNDZmZb8rhw4yB/tPgldeAyXTZ/k6xy+PVQlS9bPMvXVeLUoM0UQE66L0Gq
 5PzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZooCTVRdtYjbzGxzcUJXKn07DdvoN+Xpzf1B+wbF90c=;
 b=KEDmHl2DQOAz8kTZ1mwEwOzEkYFTvxd//f/JdctqtAsBW9Aq6rsN/4UHk4iFiu/Em9
 0uZR0qbHfFkvrR+VE0yOT8iBCypeWRESJi83k7jGRDSoC/zoGMsgGr9fs9uP2N5i4VB5
 aKImVeSVUcagXrkbaO73laGrc6t9vjVMH5X+1OWV+UWBlGCZnyV1XLkQy9hIqJf+Sxj3
 0AYs5Hdh1bPt0doAyxTy16Ry7n1EkHAOO1SxfO+S5VzZ0+RzsYexQa2FLJPaRBZhWdlh
 ZvqBL4LeLKgZm+8GDzKdrRNTxaCCDdVl1LzgrFb1YW6H66uwfiuua9Kc0pO1AY7LXGIv
 Q7qQ==
X-Gm-Message-State: APjAAAXeeGRDCooUwTXO3EW3RCHE85D8E6JQzeZQBaLLo7Xzqy1nFWIg
 WaisLjPa3lZ70VEIt28zEpw=
X-Google-Smtp-Source: APXvYqyXEUBffJLqboLIq89rq2MN1rHOwZUKha351GOPELvZJdmnY01JkVzoxjPRt6ypmX9VYOlAHw==
X-Received: by 2002:a2e:984f:: with SMTP id e15mr5656415ljj.109.1573199444783; 
 Thu, 07 Nov 2019 23:50:44 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n19sm2133995lfl.85.2019.11.07.23.50.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 23:50:43 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA87oe0O021297; Fri, 8 Nov 2019 10:50:40 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA87oeNt021296;
 Fri, 8 Nov 2019 10:50:40 +0300
Date: Fri, 8 Nov 2019 10:50:39 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: tmo26@gmx.de
Message-ID: <20191108075039.GU1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <002b01d594f1$ebb56320$c3202960$@gmx.de>
 <20191107051927.GT1190@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107051927.GT1190@home.paul.comp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_235047_008730_BF772330 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 IP_LINK_PLUS           URI: Dotted-decimal IP address followed by CGI
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Cc: openwrt-devel@lists.openwrt.org,
 'Adrian Schmutzler' <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Nov 07, 2019 at 08:19:27AM +0300, Paul Fertser wrote:
> I see there's some http server mentioned in the wiki article, haven't
> tried it yet (and I can't understand what "simple" web browser it
> talks about, probably there should be a curl command instead?),

So I gave it a try but the results are not fruitful. This command
should work:

curl http://192.168.0.1/cgi/index -F Send=@built/targets/ath79/tiny/openwrt-ath79-tiny-dlink_dir-615-e4-squashfs-factory.bin

BUT the recovery HTTP server is using a very old uIP implementation
that seems to be unable to play well along with the current TCP stack
in Linux. The result is a very slow upload (left it overnight and it's
still not finished).

From working with uIP before on an embedded target I know that it
doesn't support delayed ACKs in any form, for any packet it sends it
waits for an ACK before sending the next, and I would guess that for
any packet it receives it's better to wait for its ACK before sending
the next (as I see plenty of duplicated ACKs from this backup server
all confirming just the first packet received, and then long wait
before retransmission). The problem is in the number of packets sent,
not the size (so changing MTU/MSS doesn't help much).

I haven't been able to find a way to trick it into behaving, sorry.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
