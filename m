Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D016A11A9AA
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 12:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npHFG9qDpxRGjFa3AI+5NEdO05M9oO/l4pdkkFwkTWc=; b=cOzdL17NkVag7t
	jMr/RYYsPbqq7gzNI0/qdpP9tpXEjk5fsvrWHTd3DcEyUwyIoToBGcFcoO4kVhmz03OiDhASRFPUG
	e37+VFkROlMLLMdPn09fMFvHOOm1U3BeEsb5vjYZeKECvk/TTBkBCLt0m5uXaBzJbulhhLMxaZ2N4
	Fl8wwD1gpzVMJnf5C2ZjOR0bDEcbM44ItI0av/lI4cIc7xM/zHXzQCuYGBAkNG+aWlErOrhNZ1KUk
	y9X8I82zS44IusE6V7t/6s2XNtm3qs8RoEaPHuK4qIpKuhBUre4+p71k0OQ4LFVDDZbeLR3wH4q7/
	lhizpkCCOFIhtUO7YTHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezsy-0003jK-Ma; Wed, 11 Dec 2019 11:10:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezsn-0003il-7p
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 11:10:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id e10so23565975ljj.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 03:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=A/jA64PyhTzChuEiATdp8CxhpE09Ob/aTS6oPJlWG44=;
 b=MSg+p1ViJ1lK+fjwiWR0vREkGIQy1GEQfaa4zHn2giTaH/YrbkhQgSxPG3dNAR2AX9
 tmreSSYMvxpZow/p4L/Kab15LpnAZ+PaNPld4PqfcyTuVIb55MGBKzqvHvnVLsnG4qM1
 BoWx7YiafcmCeSpyYNt7iTenHYeEQaNUj7vJnzS3B1qYXRbs+np36D6t15gnIweYsRUc
 oejCjZ8znqROUbC+ql10wWm7KvKAIB2QnU4+HeZbC2ofdTmPRndWkrueIyzxgcslQKJx
 cDB2jqoFQn5yPB6agJ2ZMtqxnMkGyteIKY+Ts4nf3AhFcsKd7Czxor8sIvNsqOWL1aQs
 Mivw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A/jA64PyhTzChuEiATdp8CxhpE09Ob/aTS6oPJlWG44=;
 b=E7PU5fNKa0C3LAsUcKwfGuytXk4CKfFMsmX4yFhT8UWOP8Cl1mKLBYDmXGR6c22A8b
 VoSqgFRJtIfiNI3H+vq3rZQ+wAeQZc4wG7mDm/s+1swrdK5tvGZTT220ziwK3fAPsTb7
 Fh5hmvIo2Q+C8rUfb4PiXaTfBaPzc6hUD2BjlskDT8uUQCTQuTNLVlhN95eBdWs11XwA
 4pTMFDM+vm3RQ9yDcsK0Cq/GizcYVPKdkQaC0zOcu9mK3jtwUlXKjHlto3+exJk/bh7S
 e6rw1xBvkn3zed2Uoj/HllmfBCLE0jnhRud9gWhchcHIVsWwpcQEyRiIvIBYHH+eWqrL
 m2RA==
X-Gm-Message-State: APjAAAVvppb9dkP+cjF2K9WTS9G8KD7R+OymKjoArsQpWjDnBNzPY9z2
 e8DUkNW1hIcdGZfnhoyvIdk=
X-Google-Smtp-Source: APXvYqxRCUaXOuD4kGFR144QQGBTOervHbhz+rADu/SHnMFXhvqlNGxzLJXw7MLbULdrI9FgnP24zw==
X-Received: by 2002:a2e:721a:: with SMTP id n26mr1709770ljc.128.1576062615512; 
 Wed, 11 Dec 2019 03:10:15 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id d24sm930625lja.82.2019.12.11.03.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 03:10:14 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBBBACYF011010; Wed, 11 Dec 2019 14:10:12 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBBBACbL011009;
 Wed, 11 Dec 2019 14:10:12 +0300
Date: Wed, 11 Dec 2019 14:10:12 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Lars Melin <larsm17@gmail.com>
Message-ID: <20191211111012.GA10759@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <002b01d594f1$ebb56320$c3202960$@gmx.de>
 <20191107051927.GT1190@home.paul.comp>
 <20191108075039.GU1190@home.paul.comp>
 <a30b30c9-d8e2-bd70-cec3-9aaced800a84@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a30b30c9-d8e2-bd70-cec3-9aaced800a84@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_031017_306944_2F317B3C 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Lars,

On Fri, Nov 08, 2019 at 03:12:02PM +0700, Lars Melin wrote:
> On 11/8/2019 14:50, Paul Fertser wrote:
> >  From working with uIP before on an embedded target I know that it
> > doesn't support delayed ACKs in any form, for any packet it sends it
> > waits for an ACK before sending the next, and I would guess that for
> > any packet it receives it's better to wait for its ACK before sending
> > the next (as I see plenty of duplicated ACKs from this backup server
> > all confirming just the first packet received, and then long wait
> > before retransmission). The problem is in the number of packets sent,
> > not the size (so changing MTU/MSS doesn't help much).
> > 
> > I haven't been able to find a way to trick it into behaving, sorry.
> > 
> 
> Don't complicate simple things, all D-Link routers have a recovery web page
> and you access it with your browser, not with curl.

You quoted my message and it doesn't contradict "having a recovery web
page" idea. However, it clearly says that I can't meaningfully use it
_anyhow_, neither with curl nor with my browser. Please reread the
quote and you'll see it is not simple. Do you want me to send you a
PCAP file as a proof?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
