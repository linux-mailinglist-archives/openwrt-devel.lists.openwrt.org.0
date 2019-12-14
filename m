Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E884311F262
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 16:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2weXHKDBA7E9KAXB2okxmVsrR6PdsHo3PnDCwK9E24=; b=EJoXw5wjptVoFM
	s1mrqrQZ94Zon4vR69GU4tR5owvSqnlUMFzBdVay2SiRd2hODIn12yaAhuTiq090mRA8GgDbUpars
	1K/hjcEa7mN1XrzJK2eiTl/93pt5oKXDT+PxDsQGaSYHCYEM6UXTpoUm7B6QPnQGuC/J1Ez67CIfm
	pLxPZoPxt9Pr1ESokT5x6gcnCXZ/8zRpP7N/s+EL+9RWALn0d1m9M84ErmhStP1I7QQhvH6lrQ5/7
	jqhhK0TWmXPjXxy3nns/oiFCZ4cnRNP+eyW1h/8ecKslpY3t9aNYNfES/xEr+aJ66gbSt1z+Cby2R
	24Katk3DdaU5aXk59OoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig93c-0004yI-K1; Sat, 14 Dec 2019 15:10:12 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig93M-0004xt-Ss
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 15:09:58 +0000
Received: by mail-lf1-x141.google.com with SMTP id y1so1328601lfb.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 07:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BWTr3XnOe0IFjkiXNgazj5PBLvmWv46ZgU9rUfWEcKs=;
 b=Y7EZH8TcE6y2Udkp1oMtfGqqWuSdl0kNGl538LkClFFT2VS7PqpQYxnw5D7VNvMXDn
 R22fJFfSaVjLkOwz6Pe5FsVDas4eLyWNHEPMw+HJxTV80FHqS9G7XCboyHiHM2aR1uz6
 Jo5Zx5vIE5m+FXObc2DcWVgSWHjRQ3mfyzxDf88OC1NmE2B0eB9HriCrTGk63PKweZP6
 c8w8veFeo0cf4+Aa1moIUXJmU3Iy/hbPiBaHXmkqztp5e9HSFja1TUf7lVPInANiTSDI
 hZ1p6hnGCMbJeJNVZTg3T8dPi/O+CKA7jB4XnzKik2KC+02okJFE9EZUWBMpredIYibP
 7s2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BWTr3XnOe0IFjkiXNgazj5PBLvmWv46ZgU9rUfWEcKs=;
 b=G1Uhi9oa8kbK8W/XehPtKN3syFHHo51oSybm2EJaStQoJcM+RcVuXfVZQ8YW7MlfN+
 Rg0b6Nqy7sSxY+SGnKiviZcjld1JRvh6fKAQ727RZdaiA2MipdNBmphDcyFTnVfGc6wA
 17vAjL4sdgp7BL6Us5jfh8Rk72g7NsJwU123h0IeSyDTiVGJ73vlP191VKv4RRYNAype
 e8TCleV9gEDgXpehWzWWSGswen6Q7uuyDrMFn+lYDY3znXqYcaIuOvXevNTKITDYctcn
 5u5uGbRHxCTv4VfClHm9h+oMYw26AQaBi1P0+6YLkJdo8CtgmdzZCGUUR/Sbc8AYzPhL
 0c3Q==
X-Gm-Message-State: APjAAAUese9oTGeM95ameqXVDBE9aXI3EBPWgGIaNr3CxVrjGh7rmkF0
 1g4jsPRktsnwXWw9HjZlrYU=
X-Google-Smtp-Source: APXvYqz2/0YdTv1k7mB1NcbeW/SNjmErTutYRtoTWZgXxYshJHaLfhye0sdeNaK8JwDXkHwRI8oM3w==
X-Received: by 2002:a19:5013:: with SMTP id e19mr11881699lfb.8.1576336194731; 
 Sat, 14 Dec 2019 07:09:54 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id a14sm6028823lfh.50.2019.12.14.07.09.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 07:09:53 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBEF9pgY022337; Sat, 14 Dec 2019 18:09:51 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBEF9oHf022336;
 Sat, 14 Dec 2019 18:09:50 +0300
Date: Sat, 14 Dec 2019 18:09:50 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Sven Roederer <devel-sven@geroedel.de>
Message-ID: <20191214150949.GA11070@home.paul.comp>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <20191213200723.GX11070@home.paul.comp> <2070834.sci2Q4oWNF@strike>
 <20191213231028.GY11070@home.paul.comp>
 <20191214111254.GZ11070@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191214111254.GZ11070@home.paul.comp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_070956_958583_89120B6E 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] LEDs in system UCI config (was: Re: [PATCH
 19.07] ath79: add support for gl-ar750)
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
Cc: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Dec 14, 2019 at 02:12:55PM +0300, Paul Fertser wrote:
> Should a uci-defaults script be added to base-files that would
> populate the system config with all the LEDs present in the DT but not
> added by board config?

cd /sys/class/leds

for i in *; do
	uci show system | grep -q sysfs=\'$i\' || {
		l=${i#*:}
		f=${l#*:}
		c=${l%:*}
		echo ucidef_set_led_default \"$f-$c\" \"$f \($c\)\" \"$i\" \"0\"
	}
done

On my DIR-615-E4 this gives:

ucidef_set_led_default "power-amber" "power (amber)" "d-link:amber:power" "0"
ucidef_set_led_default "wan-amber" "wan (amber)" "d-link:amber:wan" "0"
ucidef_set_led_default "wps-blue" "wps (blue)" "d-link:blue:wps" "0"
ucidef_set_led_default "power-green" "power (green)" "d-link:green:power" "0"
ucidef_set_led_default "wlan-green" "wlan (green)" "d-link:green:wlan" "0"

Does this make sense?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
