Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F0DCFDB4
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 17:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N909yOVkiP2sd33kqqILWnmcTaGxAof2CsODortEh9I=; b=fskPRXPXPLjHZBM58NgQM+QwTB
	JMHNheOJi+7/pSnmuNpgbKqmesnvJTPg2Yf6fy9byWvzMQfLyV/7fOibjkJQ7IJhNrfg9Y+rr2n6/
	U649ZsnHoB7MX8Y3K9D7TfQbUnmCWXdc6+WyLVJXPTh+3IWYvmRBLE+6pZwamipMMZ7UunS6bDRyy
	nkyp/dcMZIkYEoFWFePiF1oEEzTVKShbx7sK+i7YbnZOsh0hmInCf7w3jQQcEORfccrSzdCZobUMs
	OLDRTYhmAXD/baqVIKlPyqUkZBRxsrmEvEwZioAhSGGLsKGndxQGdOE2hgk3VcN1yDYmxPE8Q0Ypb
	h6ALf0VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrWL-0004yN-Vp; Tue, 08 Oct 2019 15:35:30 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrWF-0004xl-BC
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 15:35:24 +0000
Received: by mail-wr1-x434.google.com with SMTP id n14so19905640wrw.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 08 Oct 2019 08:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=6B5hO8FJXreaCc3btFZvkMDubUSMSUPZodVBO1Yhs74=;
 b=l19ofXEA52oIqUB2qDI/md++izn4dHpmc0Xf8/nMPNa/T/jnsum35RZdbGQ/EKWbQU
 Q3lboN7Ahm42GemUlJIB6qluqRlqSe+XEXILUmN3pPXx03EjHHq29+1JsQdaHSqmnTSY
 khLgexJsH+48fSeGZv67yr7MXhg7T4klZ+ZO5EIDmLBvC67d3I1brVlCs38olmLDIKT8
 TUrdtn3hNKapYB7xlE7A2inNOkLy3kLp5cLLtiR+V4udNVdtD4pUOueE5oD6DY7d16Vd
 ESB28WRkqXC3ZtRtqOqOO+ofqcLZHAgHz0A0569SJxw7wdmizZbflo/sL459ZvIUqBgb
 ufnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=6B5hO8FJXreaCc3btFZvkMDubUSMSUPZodVBO1Yhs74=;
 b=QKHcy5mJnxqx8CsTbcT2yTpubxywc+wE7rKRYG9yQQJqotFWcSG4SvqTPqp8dSbe8u
 0re3xFHfynfenigoE46GAGJF9HXA5jStRPvnRLsLu3rQtdi4U6qYei78TXXs1DO0y4zO
 VwN+tIMdKTq0LvEOFberHO0M33dIDpHK7GDEY5BijMEC0oV3IMBuwDxnhP/a1BsGgpch
 lGdsJsyT2+mupNyvCcvnhMwGmdD7i9rJz7gN+QiJSZww67vZjIH1JPVLPXZoExSn9ywu
 O/RJ5qVYDz2eMjhfvB7pAuFvHpJcWfCCJahMW+rNo7OxvydW1dp9jnc94XAOBP/qjY8+
 P6mw==
X-Gm-Message-State: APjAAAWbKGlXa8mpQDNQwOxYuMBZDy80j6mk8beqZ/VsO/3I4omf8R+m
 6lMFsYppuxx9gNxNTiD/zhM=
X-Google-Smtp-Source: APXvYqzrXmiO5jONJRqxdQJRbx30/0terUIctGLsFXmqVwSjU8jAdVkO134mu5rc2A94f16PDcQ/Ww==
X-Received: by 2002:a5d:6250:: with SMTP id m16mr18575727wrv.186.1570548921740; 
 Tue, 08 Oct 2019 08:35:21 -0700 (PDT)
Received: from mStation (host123-253-dynamic.41-79-r.retail.telecomitalia.it.
 [79.41.253.123])
 by smtp.gmail.com with ESMTPSA id y14sm29806131wrd.84.2019.10.08.08.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:35:21 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:35:19 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Christoph Krapp <achterin@googlemail.com>
Message-ID: <alpine.LNX.2.21.99999.353.1910081733140.3032141@mStation.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_083523_409887_34C8E8C2 
X-CRM114-Status: UNSURE (   4.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] RE450 V1 flash size
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
Cc: =?ISO-8859-15?Q?Radek_Dost=E1l?= <rd@radekdostal.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all!!
I am sure this information has been already made available. But out of curiosity - it seems the bootloader on my device says flash size is 16MB but system uses 8 MB only.
this this due to the position of the ART partition?
Thank you very much!!

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
