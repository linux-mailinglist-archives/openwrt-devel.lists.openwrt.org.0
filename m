Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03D417D0C4
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Mar 2020 02:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MHNny11QP5bpmvEuxjNQ6QBmyYncOQjX5ZpRGXI+KI=; b=jUNf+6HKkXB8uD
	L8tPmvLcHq39JwjwR4x5ie4CMi67fZTenctzrR8Vr6yjRYNIzbjPc2LrYjFCImrBiuxuNf/nW4DjH
	WXU2b9rWOqVLmb7DQ9r0nEWW91CdAlZjomwsAHQ0waFXQIWVQtwNRid2JbllBlKXW/HurdmmY+bCm
	BsTOkyM41+z9eynITt7ygVVkQu3SXq0JTfgSmZhzinAKXrwhT46MXQhb70imCOv3s7a2k9siOdgfm
	C19kzWjhOFMhHcbpyaGdRpBQSmADzhXd0pe22XZKqlxnDf9wLI8MlW2pWa1hdD9WNL2ldg4ucqV3Q
	v3D3bHf4UMvDMHIDS4Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAkRG-0000UN-Ka; Sun, 08 Mar 2020 01:09:06 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAkRA-0000TV-Kw
 for openwrt-devel@lists.openwrt.org; Sun, 08 Mar 2020 01:09:01 +0000
Received: by mail-wr1-x429.google.com with SMTP id s5so2816811wrg.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Mar 2020 17:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=UTFRufIryPLvR3G96VWOxbxHXj9RXOpb/exljLVcyfQ=;
 b=PWMoh/HPaUqt5jnh0crNZ7nKtpN8ylOZAIBYGBNellQolCqe5Xh6yVoDIj2fIAMpmg
 VeRQKEAjFOA3U+LY3wliY2qcz3EmViyWcOK/0WTLItQ3QlFAiYk2NpX2v+GLlfMs0Bge
 mVS+RVbyEtIRL7TIq0aqpa/GsSGk9Am56rycryYbEYCuFNHiSBT2Kuzmdgc5mZnJZGAB
 IT05lMxZRvIXo36+6BWOV7IM0ov/4eD8gapZAYO2LeyU/5M+qFjFwaJTg4lT4uAnRRJo
 Vb1SxvrMRapRyRVX2rOwtMi75weMVpTEgz3hsUvfnpouMIQ+1SlZvKEM04h4aax0zYBA
 zrxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=UTFRufIryPLvR3G96VWOxbxHXj9RXOpb/exljLVcyfQ=;
 b=YoN+Jj/ZR+CRLVUjaexP5RCrujaRaSXnL+IYk6lW4pW3a4Gbu6WC5Mfh/CmrH/Y0ob
 2ySgZXIH9eEWQQ8NuUb2uxL92OjGh2F1VGd7WmCms2XFjaoCaooKHZjqqWU1oCECqtvG
 RcpQmZKovz5UHE5ba93bd2gjQ1ZEVKCh9RGzRd1bfnHwg+rHym+TvMZDfzw7kRPmuuuK
 JKlp9WqXo9BU524An/f3qdgFvBfR2/ZZB2gntEiQalgsEp/U3kFy5U4H9cE0fBwfriFf
 0WtnHoTN2VGHBEVU++8OQzu6EWKugTfOTO0F16Rwl2qMawqaXWgaRxYNGpxugwRD7w+H
 yemQ==
X-Gm-Message-State: ANhLgQ3h60tP+BxcbKWnsI0g9mLcdK5olQ37a/2Y5U2ZNcMnXPnjmvc7
 csxI4W87p7tBPgBvs2KILe3pqYaWAwY=
X-Google-Smtp-Source: ADFU+vuW+NB6TjUxfL8q0u+oZ/ZPV0BO9XJSKw4tY8nfE3MF9ZYqPEgrCvvQWcYs9AshfbInihLaug==
X-Received: by 2002:a5d:4f85:: with SMTP id d5mr11787532wru.130.1583629738784; 
 Sat, 07 Mar 2020 17:08:58 -0800 (PST)
Received: from [10.11.164.157] ([37.163.74.173])
 by smtp.gmail.com with ESMTPSA id u17sm18615881wmj.47.2020.03.07.17.08.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 17:08:58 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Mrkiko Rs <mrkiko.rs@gmail.com>
X-Mailer: iPhone Mail (16G77)
In-Reply-To: <CAJN1KkwcTxFMDs6RS7PvLqM0uCzZ0JZ8frb8oysLs1yrtFTnVQ@mail.gmail.com>
Date: Sun, 8 Mar 2020 02:08:56 +0100
Message-Id: <8AABEBAF-C558-4249-9F13-A5165DC7732D@gmail.com>
References: <alpine.LNX.2.21.99999.382.2003072252270.20704@localhost.localdomain>
 <CAJN1KkwcTxFMDs6RS7PvLqM0uCzZ0JZ8frb8oysLs1yrtFTnVQ@mail.gmail.com>
To: =?utf-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_170900_716464_9497AB56 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Where may I buy NETGEAR R6700v2/AC2400
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thank you very very much man!!!!
Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
