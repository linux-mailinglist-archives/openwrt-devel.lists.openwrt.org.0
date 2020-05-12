Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024041CF347
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 13:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e91gpSFus4Bjw0AZR0Whk+EIcyH/+8hqt9mN0Xk1CiI=; b=LR5vdGf7cuPGwr
	FsJ/kdCBr+Ow8iQJGEACiIO57X5+42so3nGmY/qojdK26FlPlDR/LiBtHSwgK3F9MfT4XAjHFHZj/
	r4NNZVVR3RQ6CaDaY3xrB+jyIKHHCSuiALRlmBGzYTJqY0RmjtRbKdJor/Fx42u4fq3ExnPRj0CbK
	gxCms1u9QB3Iet80hPBm9JosNwdxKjKXc5FrXPCTUQJmcsT7MOD3ReUun9W408FYMw/osd9AQ6XSp
	EtCZaiV5sZwKvTB3U10aHNIlqkgu21PqQEu8kH4Ka/F9pJ31Q26HGUp7xW79mENfUUdOQSZMcfAp/
	Ia/d7hWTFbT2EoSCnhqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYT47-00006q-VW; Tue, 12 May 2020 11:27:15 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYT40-00005b-PV
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 11:27:10 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id c15cf1c4
 for <openwrt-devel@lists.openwrt.org>;
 Tue, 12 May 2020 11:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=HoRdiNyjv/UHd7NAb4A2idoVhtw=; b=EMcliE
 Huze6PqvSte0mCEwquNXalQn7vStEyprrdDtLD6tQyCaOFR5p9obCbpR7ptW96SU
 A7mN2QqCmX5UgPDToPkZFTWYbYtjVMSLjN12SeN2ftnuFvpIqf4GkQpBGIZQktjS
 NWpTptdGVF1sN/bnWicA+KjYwCLkbrcGgPt3d1zeWbJt2Vam+18iE+x+2keVgAS5
 5tAGLMWVKq3xUP53tlgbZcMpQIHqhTgjsxzIshyYhdHI0+remyC0/qQSkd/FI8Z3
 uh8a8st7FiThg8S+/iNgD9tdWR0Adsv9p6WLKjOok3LVtvnDkCw02o5ZDl18R6c9
 AEGr/h+nubFhkMGg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id cbdf1a51
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Tue, 12 May 2020 11:13:38 +0000 (UTC)
Received: by mail-il1-f170.google.com with SMTP id 17so4735147ilj.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 04:27:05 -0700 (PDT)
X-Gm-Message-State: AGi0PubiHKGoIX482fRVaxyKiBGT2vLZb+9MdZqgOhHE9DYNuDoKVbuZ
 c412LSoarf3QoW8yKEZkL5VoPJ9mXePo+rWTGZI=
X-Google-Smtp-Source: APiQypL5qQkNUUi+EG6zyuyeNq3Mk9ZwPPeU7XhpACG9Ch0zq+6bMs6nIq/eRDuh5c2PlzdcyRLMFaIxvnFeIhWZGs8=
X-Received: by 2002:a92:5f46:: with SMTP id t67mr19766386ilb.64.1589282824356; 
 Tue, 12 May 2020 04:27:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200512110634.21976-1-fe@dev.tdt.de>
In-Reply-To: <20200512110634.21976-1-fe@dev.tdt.de>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 12 May 2020 05:26:53 -0600
X-Gmail-Original-Message-ID: <CAHmME9p14jHyYVVdKtbKS4yA7YSYtAtfczXs7J7asgRm94j3UA@mail.gmail.com>
Message-ID: <CAHmME9p14jHyYVVdKtbKS4yA7YSYtAtfczXs7J7asgRm94j3UA@mail.gmail.com>
To: Florian Eckert <fe@dev.tdt.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_042709_043983_0A8D2299 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v3] wireguard-tools: fix version
 indicator
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
Cc: fercerpav@gmail.com, Hans Dedecker <dedeckeh@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Eckert.Florian@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Is this a patch you'd like to send upstream to wireguard@lists.zx2c4.com?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
