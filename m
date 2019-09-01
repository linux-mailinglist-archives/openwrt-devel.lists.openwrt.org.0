Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621B7A4820
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 09:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/BlBG/KdqH44npYmJZj2hqKMaIWiKVnjOiZHz2Q0qE=; b=bTDPM4zKQR0eqi
	xbGCFLMm7cDF/Gc/X9vOTJwvFfFYBAKZ4klViy3AZ/UZDSn3z/DTKeJjlMZKg8ThluBXh1SLgV5iv
	zkmo1gDCTPUdniohJ4bULMp0RrIXbFk2mR3v0z6rY/lqmxyLP7jXWKdmXvpK856jVZyixUTm44X5+
	CclEc0+9wQSuWgY4rqg48nmcYgpftN90ynVwwQelkEj3f+4wp9icq3NH41A6V6MG9aOdw/X0KdUPN
	OjB7J9xgbc32nBcNslMibuAGB8KXa0qB1/jifmACVmgFcwbg3+exMHskMLD+UPfuf/6UAaEDvVrKt
	+bvtwe3JJ6JekxrXigBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4KNQ-0003mP-Gj; Sun, 01 Sep 2019 07:34:20 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4KN3-0003lx-9q
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 07:33:58 +0000
Received: by mail-lj1-x241.google.com with SMTP id 7so551013ljw.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 00:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E+XBKdv3fEdbWbL3Fn2Wmibx5LaGGSuwX8+9a3PftXo=;
 b=Cn+8emiIoBZ0TneMnMooBf4wScWVpHM3bhx9FAWGU6pmhIyaVihnu4TZNYyYA6XiTq
 v8syKixDCuB/f1WKxEurpwy7fldQ+kCMDBrCOlVem364BkMyEcQy52B/DxseCwNb+qCI
 EUR1bE2U3sn960+QPMC578G2681JGZDPBPfWxjLSXSNNWxtvcif8xQqRi6D3veeI0hja
 D9T9YN1OuAPFmv+LssnYHwRXFOgXbwN588ndvGjoNDVPn28B2dVsbOg6IBCbcvgsZxFA
 AvKf7QzSSHZlbDlX3hq2NebwnO/2/He9x5iuADUWvb1KHLPB3I/eseMYvk2bNTZRswdl
 X5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E+XBKdv3fEdbWbL3Fn2Wmibx5LaGGSuwX8+9a3PftXo=;
 b=PFVtMuTXxmPeZh2qqxQKst7SLlRZVjGtphSzS0/0uKXiHWI6AFbY884L82PIG42u69
 1QUZN2QITs3joI058p+HJFwaMOYeby8/m87nnPYBFmVpbr7/3/SxRmboElkvSMuyX5qV
 WHb7yg6yNW7ebnk8W/VMEpSHbs/kF+o7AuWhL4mgUGFDqoHLA+MCwSva3slzfCFPK4LY
 CxLK/KRRU1P2xO74q/iX7tv0XA+Mf39aOhHH6VF+tmxjcrbrjfSU2ngHkoTp67w4YPvx
 hkM94Uki++fS795H4AaEFpJOyNaVVYXs2Syn/Pg51qjAXhHDGfRGiFbB7cZWAunJVmFQ
 /omw==
X-Gm-Message-State: APjAAAWtij3PdJIYHuRZO4Zs2kh80Etam4DrV1KNWKw4y1+1sHpr5sBe
 goLvAZ5rrhmPckNB0s8yv/I=
X-Google-Smtp-Source: APXvYqze0AjsoVX3nSJIvWaknKEjTcAtpF+8HIMNeOs9jMJ0yolgliCF03p3UOK6NgW/L4FmRIGyTQ==
X-Received: by 2002:a2e:7210:: with SMTP id n16mr3115413ljc.235.1567323234751; 
 Sun, 01 Sep 2019 00:33:54 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id r3sm1793400ljb.96.2019.09.01.00.33.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 01 Sep 2019 00:33:53 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x817XpIM025940;
 Sun, 1 Sep 2019 10:33:51 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x817XopT025939;
 Sun, 1 Sep 2019 10:33:50 +0300
Date: Sun, 1 Sep 2019 10:33:50 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: mail@adrianschmutzler.de
Message-ID: <20190901073349.ekh6zvtuovseshoq@home.paul.comp>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_003357_393104_1809F424 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

Thank you for the reviewing.

On Sat, Aug 31, 2019 at 11:32:33PM +0200, mail@adrianschmutzler.de wrote:
> > +	xiaomi,mir3g-v2)
> > +		ucidef_add_switch "switch0" \
> > +			"2:lan:2" "3:lan:1" "4:wan" "6t@eth0"
> > +		;;
> 
> "6t@eth0" and "6@eth0" should be the same, so this can be merged with cudy,wr1000.
> 
> > +	xiaomi,mir3g-v2)
> > +		wan_mac=$(mtd_get_mac_binary factory 0xe006)
> > +		;;
> 
> This can be merged with elecom,wrc-1167ghbk2-s|\ etc.

The question is whether it should be merged. I can see both positives
(less places to change if/when scripts are refactored) and negatives
(not easy to compare with other probably related devices from the same
manufacturer). If the current practice is to merge everything
mergeable, sure, I can send a v4 with that.

I'm rather worried by the lack of feedback from R4AG developers/users
though!

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
