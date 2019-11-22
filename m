Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422E8107924
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 21:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/65O/sw6rAoJ4tthJhtsSTixcy7a/HgmgOE9QhRLcRE=; b=UZTgoavZvGy4vb
	jIOgcbbORCKWH3EJjs0kJ5hT3qEyo3iA04bhGPQp94dXNapdRLYGgLLpkD7HMqhGrxIE2eEzIus6o
	ZoFobGsB4OtrxcbCxWXM4B9MM8xMXLWFTHPRp+hp4oncWioA0/uRcbsKc3fzapV2yJ0l06w/Nq8BP
	vGh2h6opQjcLcMjSW21D3FWl2tspSRS18/0CkOdighGrVLI5UjnGZIWfGrrphdKSJVCwGTTkmoZDf
	BqaqTEI6+kNF3W1jHXgIKPTMORSj99sOCZ2WHu5f766TT/Y+D92zjOB4UxFg+p7NJOtXjVIz1AuVa
	WG7A/h+5SC3qcPq5mckQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYF6n-00052i-Ft; Fri, 22 Nov 2019 20:00:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYF66-0003dv-0X
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 20:00:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id w9so10119134wrr.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 12:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OyCydIitiL62tI6lI+yuLMuPrUNYmumWj0FU12w96KM=;
 b=IZQKbtKHQeBP+H8KNhUChDExJP3R53fxHh8c0Sf45z5EdpNvozUi0qXhkc9BZ/Zphm
 4p16KhRN8swTIChhvTfbRkcc5iBadN/3mM/T4KlBzTW/hJMtaSWM2IPmXf625msM5w3C
 K6pqdOM0j8YoIKeGKw38GpqkSjyd+BqlXxHi7T5zYpVq20Szkm1WYExlj2kurUk5Y2Nf
 iUi1mpjt+oH0zaERDPdHhfw/4WwOoTTwWwOlnUZyw4fpeazT7rpiv1d8CLLUivtq+UHP
 Rr3v8VXD1ABoPUvOvuMSyemcmZD05WxiFJMSLxz8c8CHvp6urNB5jcX+wn2ZhHNOIXPg
 E/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OyCydIitiL62tI6lI+yuLMuPrUNYmumWj0FU12w96KM=;
 b=pD7a47ZCf+HMaoh5JcXX8oO75TuZHCnqq4zCpUSLZSSbeXFzBA+jOKfVUUffpLtTDp
 3Ntr1kLxH3hXDRy+4nFmuXXl/eIg6ssCPKRu2dlmdPXm1G/wcBA5tQuVuWkfhuADwozh
 erxoN9+eYHDMwtXAGRv5zKC/4bFfgXmFoWe+Hk0UXtGlsl6IWLDONJcylp81d100jryf
 WvTr0OnGcQ6a3/JDXwK1o4ZmF3/yVJoAUOg0fEUUESKZuJ20FmVYyIeIymBA/0R5RKSB
 1B7yQqA/J5Uy2TexfNAjvC+x0Mmd5M0Pn7wq/qWPepS5XcKjTgfrTIH+ltsZlpm4Ok7H
 oGMw==
X-Gm-Message-State: APjAAAXgw2p7x5xnlGdFSgcbURZYKQhR8SuAdRA9Ys1C/ZN9+nXScJ2a
 ni1aMDOFNTcPd+0zFappyfY=
X-Google-Smtp-Source: APXvYqxAfKXutPlp2LGEdbmqScTqkos9upqrJctVXZ4LeoGwViYEUdkMBpxECxWL3vad+JCDEvgnww==
X-Received: by 2002:a05:6000:104c:: with SMTP id
 c12mr18276498wrx.212.1574452802855; 
 Fri, 22 Nov 2019 12:00:02 -0800 (PST)
Received: from debian64.daheim (p5B0D741F.dip0.t-ipconnect.de. [91.13.116.31])
 by smtp.gmail.com with ESMTPSA id
 d7sm9063638wrx.11.2019.11.22.12.00.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 12:00:01 -0800 (PST)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93-RC4)
 (envelope-from <chunkeey@gmail.com>)
 id 1iYF60-000Cfe-Sl; Fri, 22 Nov 2019 21:00:00 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
Date: Fri, 22 Nov 2019 20:59:59 +0100
Message-ID: <2725101.T8L288SS5r@debian64>
In-Reply-To: <32e80bbe-3365-c1ef-0358-ac0a4e60fd6c@hauke-m.de>
References: <20191117014442.1427795-1-chunkeey@gmail.com>
 <32e80bbe-3365-c1ef-0358-ac0a4e60fd6c@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_120006_078540_ACE26B43 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mac80211: switch to upstream owl-loader
 driver
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Monday, 18 November 2019 00:34:01 CET Hauke Mehrtens wrote:
> > +--- a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
> > ++++ b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
> > +@@ -84,6 +84,10 @@
> > + 			val = swahb32(val);
> > + 		}
> > + 
> > ++#ifdef CONFIG_LANTIQ
> > ++		val = swab32(val);
> > ++#endif
> 
> Lantiq is big endian, are there other big endian system which do not
> need this byte swap?

From what I vaguely remember (I know that Mathias explained it to me once.),
that special hack was necessary due to Lantiq's pci(e?)-host silicon doing
byteswaps just for 32-bit writes. The only other system that uses the owl-loader
is ath79/ar71xx. This is a big-endian MIPS as well that didn't need the swap.

(That said, I don't remember what was the reason for going with __raw_writel
rather than "iowrite32" though. At least ath9k is using it for the pci access
just fine everywhere.)

Anyone fancy checking out lantiq and ath79 devices with a AR92XX without the
swap above and the __raw_writel replaced by iowrite32?
 
> > ++
> > + 		__raw_writel(val, mem + reg);
> > + 		usleep_range(100, 120);
> > + 	} 

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
