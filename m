Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC8913126E
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 13:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0GSUiogno211UjjZcSc0dCcaYHdKcNWjqlhHVkmKWPI=; b=UdPXKrYD71fC0u
	PwNJiQPqVb5tNDL6a6TTtDx5ylQYURaxJ3yVqkl+uLsQUdwBAfGM1PZctcHhmn7cXqc3TwLmvX8mF
	MUnGu/ZdkAoBEx6azLnuh4Jqc2T4yL8quGP7OCNyawLs9aWgFBfSW4RC4qgVFNXfCVECRlRthaJ+c
	avLA/ua3KPIFXYk7jSOBQPL+FDyrYpZKJNPo2HFD0kIEmvKEnhhqoYbxaAWSz6KcH8EmfP1d37fF9
	gJmbM69b3M0pGTuvL94SDl+hMv1t1+RpP24FeYjO5lW1pSZKaRDoqSVVfFu1FV6qB5AnJfb74wOU8
	5qqgmts7y5T14f/KtKMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioRyI-0005cc-KO; Mon, 06 Jan 2020 12:59:02 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioRy7-0005cI-Uf
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 12:58:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1578315528;
 bh=lVsIT0uZSv1H86tLh/q8418KyeYjIIyMFgfHVhrupKY=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=Sq0QAv3+kYi7A8KCA+sRV2B9cWReps11gApFjaSkVEvc8jwoUvIWTuPgJ8QogVN59
 /sDcFP3Ju1FO5Owk858vPjMpVU/jGZcr6ZG9Il9OjC6UvkirwHtAv+IWUdOsyh6U1X
 4MnH3wx9mI2ut3XO7NR7CW4KbAbWCRu0MbZrbDWA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.100.126] ([89.246.58.88]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MQNeK-1jIAbj3VOu-00TmwP for
 <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 13:58:47 +0100
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: edgar.soldin@web.de
Message-ID: <aa86bd41-26df-841d-2735-5eac553e676d@web.de>
Date: Mon, 6 Jan 2020 13:58:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:kmF1iyuRf0b4cMG/8yB07V8Fm6zQVpFszF69ozI9bi9rweNXwD9
 z7dkkG0uKOFsh2ZyEB2TkbuFdBow4uuD7yuLq85H9ojkx4lACcG6fXupn7uEYt/zrPj4XXQ
 eMDC6w+VOjMMc+fCpbCXZYK0Eg5yCe5tN6hiRnLpf9HPgEfxdFHnMRHGXhvgW5/vGO66Cp2
 spgRGp5qoqB1sB5y1VopQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fMi2NLlHI6g=:eu845ZKm3NxYxqWcGmLOtc
 pEoZF225w4GD3ghi7Ub4Mqe/Pr9S1TDH9ia9g6w4gbErShQnRRayphFS+0wQpBrCj4lJvbx60
 5BlJ9AKqRqvfnLCiaLj4bWtNSLlv5O5eUxwX5c5Xf4IoO4z0z1Nwu3T0SHBBy1zbs39QzQ47X
 i6D3O6JQoblghXu9X9TALJCypBOlEzv/8yINT/hn1n57g1uk1heQsFMZPOrQZFs76xN8+1TSS
 DgYkMZWXXHeU9xY8BnTRryGx2Xz21bR5VvQSQ03vuFF82oJ+V8TXwl9pZAY1/vD01GbbxK+nU
 fFQb3KTpBnmwob5oSqWE0mOUwWJzTQv4XYI3yxxK7Sjo4+rCGXbANIMCGOavavA+AQRnLwbyx
 fst/PCKRHJrPVTVcmClzMUfLojNa0DnzFiGTszU2CkaiNn/dXb0bonotgU7EPtkmcksNWNMmJ
 AxqQ8wF+3RFqpx71HGGd/R7tJ8JPlbrDsENlObL278DLKpYEGyyeS6Nj/dV8qz7IFQwlJ4hKx
 45ImYT1O/SA1ByXbemR1g23IHs2+tRfBHpGHLtO8W8x7yx2FvKN9tERWfnAb4wMt7Neoi/njR
 DkHtz3V4fFZ0EcnozNR+MJL4sDapGa8V96r1A209pCwL7PnknMCm4MzzSALj8f/Mj6coQ2bRt
 +MwjLfVpNET4t+vTQR54z0JZqVRvvjXN4iPhSoxf4MxpSoNtrqxQ4SddYzschV7u5YIDDEqSh
 r6rZYXXYUeAVE+Wpw7I/wOeWVqQaStML19hJaYYN+bhXw0e1B74px26qjIIQM56lB56o9Lbt0
 mPsqnMh1J37W18gNUnVt2A3WNvlmNJE0eCQXztsahCItBjUTg/CPPtR+JmOJrWPY77wuHoh+j
 I6uy6yR8de7zKvCA05exmKWf0HqI57Cc3AR8lVuPrSIuz1JIqf3Etmr+rSF1KNQawAETHnwDc
 fktCTwhS33kW5H0wdkv8i7M3Aq3zhE3OmQMxeOK48TgAohR+b3pbzKy7l1I6BVUyOykyMORH8
 Xu6eNVOtgBlArL1W1lXYypSJZeN5bKR4OdP7Y6+BT76PG88VVn0JgAcWKtOdzpFHiVElFDqQz
 96qTGAvOiGNaYCEyLW3UrL3iKyaXYsbnmoCFg77XU32oCIFrDCD7E6XMHvuyNI+4rMkDTgqyL
 5mPVAYhL7M3efJPIdlVTMJMl1o4dE5/PGo3A4k5KKE6gmjXYnXKLMVXBidUWrVlwtVMzNGznY
 hzR+Jibpq0BBAreMyCjeHHTUCBxM0eqLfTirZ0TL7YBnYC/1ntdG4gSfpIxQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_045852_279752_CD23465C 
X-CRM114-Status: UNSURE (   4.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edgar.soldin[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] time for OJ 1.15 everyone?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

new year, new OJ.

start of the year is OJ release time traditionally by now. are we in agreement?

a snappy new NY to one and all ..ede

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
