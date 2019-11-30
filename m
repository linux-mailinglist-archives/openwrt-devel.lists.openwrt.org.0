Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E98410DF49
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 21:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epISMfjm84Xo3uH0meD5KhlHsrtfI9FK8hduSrijLTQ=; b=fCth0kSw9oTzkG
	1DgX7FS0OJiX3b1nPMnPslDmkaE77tEb7l+UEXQBmPrJhX87ardmxhEZkJ3jZ5Kq3d84cX+fvYxSL
	qpivk/xW2ZcLnh8cw0DeZ+ssov4rJxwf3xbYh5qA22DBRE/BcReiVx147bhrVO1sraUnriN3fl0Uc
	ZIlL7mVZhMteXc4dPEpz8KSWVECr6L0r0M7f8NsybHwG4GjXTGbFlYi2rnvKg5VeYvNnbpRUK22AI
	cKyf9crUz79YReuW3rBbyGTxxa5C1r3PO4NSscf2r7VpXf6lONa/ktpMf/ELn6WNo/wGky20GkmS6
	v1FTkDDt+iSh6TDwpK9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib9bX-0007QI-IW; Sat, 30 Nov 2019 20:44:35 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib9bP-0007Q0-CU
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 20:44:28 +0000
Received: by mail-ot1-x342.google.com with SMTP id g18so499578otj.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 Nov 2019 12:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=jOeaEMfxhanguewqIFEiZNssp1zJHw+KewDL3GXLRsk=;
 b=NMGwkvbKYVJVIQEYsKqtUx5PLMCSVOGf+MT7XTxrhGwtGRajA8LXaanXvyuUAnncPj
 wP51CCkfm/5EbgxaZdERksuqZpTYm/byPNi5dGe1ZLGS/oUHNC55dI5+2uw8HFFvztHB
 whBVY+3AafVeAIcttziwxtODhHgBrv3/tft9bjR3OFWmLvSFC1uoiF7QwVCp1G26JVkI
 HoVxGscFYpeufK7erB4SBbO4Tw1KofNWyxIgbZAhrojckLC2rn8qpcw0tMkb6bmXEem/
 +ruQTb0YnYtAKeqYHt06GLHSV9hl6uqVxADzo21NYB+zHrrZuPzH8htWgVisMEa4T3ED
 Q/uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=jOeaEMfxhanguewqIFEiZNssp1zJHw+KewDL3GXLRsk=;
 b=eGaq3tKkrNYEa7GoGNkfo91OfuIjoUJmrp9/Ystmbvuex6Mkdf+fmWx1DReyS18MAY
 4Hv/8MRG9TJZ3PVPYUa8fJ71OuP1CEbHagZZSg2ClCd4MpFgZDCyjLWmgzyt8+D/VWss
 HF53ZeQyIyaQ+ZlOmfjaie9s7GGg9EZFEC6PlYDilCw+hLaykadc2mLFuJsh6tnC9cZY
 DBqcFak6P4x0/2fJlU0kU10pDEq57LWdTYwEcUlueCqYQ+iFzAcAVJzFG2SrLaW+U3fq
 HL2GYu9nZMKeEyARepQH9WgskkZsClQGv9RlW6g2t+D6/EHAlb0I1TP5sP5rct+FGaON
 1t+g==
X-Gm-Message-State: APjAAAVDc1F1i1Thh37Vntvh3zTWcwGJK41+f+Iuv34+1pbRhzh4UXgK
 meH7EduNp2kbzKXgnkh0yr+f5lM7IwYqewfFDvPp7g==
X-Google-Smtp-Source: APXvYqyjnT5NAoYKnWVwKz7N1wsJgxPz/ZJCWBQCwYTGWSlwtRV5Ep7yD0srhc54+fHQnVBmpHBYZTRwPdJm0+fpyCQ=
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr1995514otc.236.1575146665855; 
 Sat, 30 Nov 2019 12:44:25 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Sat, 30 Nov 2019 12:44:25 -0800 (PST)
In-Reply-To: <7d4516c2-c9d2-102a-cb33-796497baa611@linux-ipv6.be>
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
 <7d4516c2-c9d2-102a-cb33-796497baa611@linux-ipv6.be>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sat, 30 Nov 2019 21:44:25 +0100
Message-ID: <CAKR_QV+KnepnZURdc_tHA06rdTYKJr-JYmsc4d_YFv=qzD_A2g@mail.gmail.com>
To: Stijn Tintel <stijn@linux-ipv6.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_124427_452214_564A72E1 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 status
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 26/11/2019, Stijn Tintel <stijn@linux-ipv6.be> wrote:
> On 26/11/2019 00:34, Hauke Mehrtens wrote:
>> It looks like there is a throughput problem with ath10k-ct on QCA9984,
>> https://bugs.openwrt.org/index.php?do=details&task_id=2593
>> there are multiple reports in the Forum.
>>
>> For me QCA9880 on a BTHH5A with ath10k-ct on 5GHz works in openwrt 19.07
>> The AP can do 180 MBit/s TX and only 40 Mbit/s RX over about 8m with a
>> wall in between with sae-mixed to a Intel iwl8265.
>> It is also very close to 40MBit/s not much changing the lowest I saw in
>> about 30 outputs from iperf3 was 38.8 MBit/s and them highest 41.2 MBit/s
>
> I am seeing the same low RX with a qca988x AP and an 8265 client. This
> did not happen earlier this year. I first noticed this on September 5th,
> but I don't have known good commit hash. The problem goes away when I
> disable 802.11w. Without 802.11w, I get 300-400Mbps TX and RX.

Hi

Do you ever plan to merge your lbe-5ac-gen2 branch into main tree?
Would be nice if the device would get 19.07 release binaries. Code
testing really sucks if I need to build from source for almost all of
my devices...

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
