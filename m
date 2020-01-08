Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78301134F9C
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 23:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNVZVhgilpX3I7avaIZavLT+BiqQIdDZ0+hFdusIr/Y=; b=icqN3OvlgGoiXd
	1nYpBocA3gVaw8IoNXe8h8jLxJB6kySwt40dGZg1Ion/5ZZsG/bTDBeOhadMZMjRgxLgICX+YrZaI
	r2Oh5CwwyHPbhom9MIJS3kYdy+GcxHZa3SQM+EyyM7XAp6ApzWOkzfPHwBYVDY4ajqvjgIkcHpQKX
	3wVn1jWFURO0HP+ErbMYu8fEwINw0B2EQ1ha8TQNE9XjO2XAviGh+poLzJBIRcOzvDXzI/59MatHl
	haDII2sej1HEoNYFJxt5quLnN1ZPBebr1VyZ5Bwq2/6qktf/Nqw8gf+nhpSmZxLv5WOaLfE9xacT6
	ZhpbxpMtcjZzpMio7Fiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipK9b-00010M-AA; Wed, 08 Jan 2020 22:50:19 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipK9U-0000zr-AI
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 22:50:13 +0000
Received: by mail-ot1-x341.google.com with SMTP id r27so5259852otc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 14:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=DQi/kNTq3uJbZXKvVzaTxxXuCCrmmXi7O8jS2eX8EHM=;
 b=NJ8qVp0MeAOtWCcHM9+DLgwt+7bpXCZq/Pfx4gqvwNDnYAG35DsL7PkPgyJ5sghZ+4
 Dv/hhlIDzjad1o526WEiE+kPYzggvGKw7b0rlKbNdYW6rrU6CYsEhSXaVNF57KHAVtfE
 H0aKaAMlJZvL+ws7Gm5kdGOm1zLM82owWDsWYwQL3cRccpxTxsU92Xh8p5gqyY7T1ciI
 B5TM80RglGYVHZ1UjVNWysFYbyULZRAmerr/Ib1FQEJs6hPru40tLPBmSksvsDQZSGOL
 ZbJiDbRI/Tgxc+RpvuZ984R51mkZwAmBHGGiZZXmga17iYMDici6F5ii4jIR4thWuadj
 4TPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=DQi/kNTq3uJbZXKvVzaTxxXuCCrmmXi7O8jS2eX8EHM=;
 b=PjkvIuYDhShJ23D9zDAhFKXCptNsqOpiKF9l5s3jfTxN884wNONnIK88AzLXt5yqnM
 wEh1i7DIRUmkI1Fa45uDQldVRwa2jrsZHu4maTzByXGgn5C1gbXasYtD7sIQoI5Ygtrx
 3Ls8tora2HkL+aY5o5jFbGFrLZHAQZJ5onSVkNtaSTJWuxQe0FgKrKmK0ANyJ2IQQRzB
 O+DjWx080UMlL1AnhM42rqBoY7zxEwdzFmMS/vRJrq8fD5SICzGEjHFkAiztBh2u0N9G
 43WfyJSJ+0YEs+urwr+J1xWYqCE4v9AgcYs0CO1WVaFJwar97WjK2kxPnZgagzUZeA0i
 toNQ==
X-Gm-Message-State: APjAAAU9JGeqqHl3BTAc6tvcpEhQMqPr6pVGOTYh6W7pGmtohEhnslVt
 GiZ5yI8MQBcTsS9Q5xLn5eY8KKDmBWBItu6qqVw=
X-Google-Smtp-Source: APXvYqx2iASuNTXk1l8bNQeE6e4w5oPV1kciL52g5uz0Do6vUCs+dd6lAbnGHtUtzMrT1Paw0i2AG7m9ua7/FAeCucQ=
X-Received: by 2002:a9d:6b17:: with SMTP id g23mr5751242otp.265.1578523811018; 
 Wed, 08 Jan 2020 14:50:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Wed, 8 Jan 2020 14:50:10 -0800 (PST)
In-Reply-To: <20200108223413.520991-1-rosenp@gmail.com>
References: <20200108223413.520991-1-rosenp@gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 8 Jan 2020 23:50:10 +0100
Message-ID: <CAKR_QVJ7t-LDJx2anf7sar1JW1b8dR0i-RPRSqGJrKAjwwWU+w@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_145012_381699_093E2768 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: ag71xx: use
 netif_receive_skb_list on 4.19
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

On 08/01/2020, Rosen Penev <rosenp@gmail.com> wrote:
> From: Chuanhong Guo <gch981213@gmail.com>
>
> This new function make batch processing of network packets possible,
> which slightly improves performance.
>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> Tested-by: Rosen Penev <rosenp@gmail.com>
> ---
>  around a 20mbps improvement is measured on a TP-LINK Archer C7v2
>  .../net/ethernet/atheros/ag71xx/ag71xx_main.c | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
>
> diff --git
> a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> index 0924b81b92..8831a51acc 100644
> ---
> a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> +++
> b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> @@ -1106,14 +1106,22 @@ static int ag71xx_rx_packets(struct ag71xx *ag, int
> limit)
>  	unsigned int offset = ag->rx_buf_offset;
>  	int ring_mask = BIT(ring->order) - 1;
>  	int ring_size = BIT(ring->order);
> +#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
> +	struct list_head rx_list;
> +	struct sk_buff *next;
> +#else
>  	struct sk_buff_head queue;
> +#endif
>  	struct sk_buff *skb;
>  	int done = 0;
>
>  	DBG("%s: rx packets, limit=%d, curr=%u, dirty=%u\n",
>  			dev->name, limit, ring->curr, ring->dirty);
> -
> +#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
> +	INIT_LIST_HEAD(&rx_list);
> +#else
>  	skb_queue_head_init(&queue);
> +#endif
>
>  	while (done < limit) {
>  		unsigned int i = ring->curr & ring_mask;
> @@ -1155,7 +1163,11 @@ static int ag71xx_rx_packets(struct ag71xx *ag, int
> limit)
>  		} else {
>  			skb->dev = dev;
>  			skb->ip_summed = CHECKSUM_NONE;
> +#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
> +			list_add_tail(&skb->list, &rx_list);
> +#else
>  			__skb_queue_tail(&queue, skb);
> +#endif
>  		}
>
>  next:
> @@ -1167,10 +1179,16 @@ next:
>
>  	ag71xx_ring_rx_refill(ag);
>
> +#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4,19,0))
> +	list_for_each_entry_safe(skb, next, &rx_list, list)
> +		skb->protocol = eth_type_trans(skb, dev);
> +	netif_receive_skb_list(&rx_list);
> +#else
>  	while ((skb = __skb_dequeue(&queue)) != NULL) {
>  		skb->protocol = eth_type_trans(skb, dev);
>  		netif_receive_skb(skb);
>  	}
> +#endif
>
>  	DBG("%s: rx finish, curr=%u, dirty=%u, done=%d\n",
>  		dev->name, ring->curr, ring->dirty, done);
> --
> 2.24.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

An identical email has been submitted yesterday. Why are you sending it again?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
